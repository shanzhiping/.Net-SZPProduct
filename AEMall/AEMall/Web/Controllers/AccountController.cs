using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Models;
using BLL;
using System.Web.Security;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Drawing.Imaging;
using System.Web.UI;
//_5_1_a_s_p_x
namespace Web.Controllers
{
    public class AccountController : Controller
    {
        UsersBLL _UsersBLL = new UsersBLL();
        ConfigsBLL _ConfigsBLL = new ConfigsBLL();
        LogsBLL _LogsBLL = new LogsBLL();
        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        public virtual ActionResult LogOn(LogOnModel item)
        {
            bool isPower = false;
            string ip = Request.UserHostAddress;
            LogOn();
            if (!ModelState.IsValid)
            {
                return View(item);
            }
            var item1 = _UsersBLL.Get(item.Name);
            if (item1 != null)
            {
                if (_UsersBLL.CheckUser(item1.Id, item.Password))
                {
                    FormsAuthentication.SetAuthCookie(item1.Id.ToString(), item.RememberMe);
                    isPower = item1.IsPower.HasValue? (item1.IsPower.Value? true:false):false;
                    Logs log = new Logs { Id = Guid.NewGuid(), CreateTime = DateTime.Now, UserId = item1.Id, Name = "用户登录", Content = item1.Name + "用户登录成功", IP = ip };
                    _LogsBLL.Save(null, ref log);
                    if (isPower)
                    {
                        return Redirect("/Admin");
                    }
                    else
                    {
                        if (Request["ReturnUrl"] != null)
                        {
                            return Redirect(Request["ReturnUrl"]);
                        }
                        else
                        {
                            return Redirect("/");
                        }
                    }                   
                }
                else
                {
                    Logs log = new Logs { Id = Guid.NewGuid(), CreateTime = DateTime.Now, UserId = null, Name = "用户登录", Content = "<span style='color:red'>失败的用户登录尝试。</span>", IP = ip };
                    _LogsBLL.Save(null, ref log);
                    ModelState.AddModelError("", "用户名不存在或密码错误！");
                }
            }
            else
            {
                Logs log = new Logs { Id = Guid.NewGuid(), CreateTime = DateTime.Now, UserId = null, Name = "用户登录", Content = "<span style='color:red'>失败的用户登录尝试。</span>", IP = ip };
                _LogsBLL.Save(null, ref log);
                ModelState.AddModelError("", "用户名不存在或密码错误！");
            }
            return View(item);
        }
        public ActionResult Reg()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Reg(RegModel collection)
        {
            string code = "";
            if (TempData["SecurityCode"] != null)
            {
                code = TempData["SecurityCode"].ToString();
            }
            Reg();
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            if (!code.Equals(collection.AuthCode, StringComparison.OrdinalIgnoreCase))
            {
                ModelState.AddModelError("", "验证码输入错误！请重新输入。");
            }
            else 
            {
                if (_UsersBLL.IsDuplicate(collection.Name))
                {
                    ModelState.AddModelError("", "错误！相同的用户名已经存在，请重新选择。");
                }
                else if (_UsersBLL.IsDuplicate(collection.Email))
                {
                    ModelState.AddModelError("", "错误！相同的邮箱已经存在，请重新选择。");
                }
                else
                {
                    try
                    {
                        Guid id = Guid.NewGuid();
                        Users user = new Users() { Id = id, Name = collection.Name, Email = collection.Email, Password = (id + collection.Password).GetMD5(), IsActive = true, IsPower = false };
                        _UsersBLL.Save(null, ref user);
                        return View("Sucess");
                    }
                    catch (Exception ex)
                    {
                        ModelState.AddModelError("", "有错误发生！错误代码为" + ex.Message);
                    }
                }
            }          
            return View(collection);
        }
        public virtual ActionResult LogOff()
        {
            FormsAuthentication.SignOut();
            return Redirect("/");
        }
        #region  生成验证码图片
        [OutputCache(Location = OutputCacheLocation.None, Duration = 0, NoStore = false)]
        public ActionResult SecurityCode()
        {

            string oldcode = TempData["SecurityCode"] as string;
            string code = CreateRandomCode(5);
            TempData["SecurityCode"] = code;
            return File(CreateValidateGraphic(code), "image/Jpeg");
        }
        private byte[] CreateImage(string checkCode)
        {
            int iwidth = (int)(checkCode.Length * 12);
            System.Drawing.Bitmap image = new System.Drawing.Bitmap(iwidth, 20);
            Graphics g = Graphics.FromImage(image);
            Font f = new System.Drawing.Font("Arial", 10, System.Drawing.FontStyle.Bold);
            Brush b = new System.Drawing.SolidBrush(Color.White);
            g.Clear(Color.Blue);
            g.DrawString(checkCode, f, b, 3, 3);
            Pen blackPen = new Pen(Color.Black, 0);
            Random rand = new Random();
            for (int i = 0; i < 5; i++)
            {
                int x1 = rand.Next(image.Width);
                int x2 = rand.Next(image.Width);
                int y1 = rand.Next(image.Height);
                int y2 = rand.Next(image.Height);
                g.DrawLine(new Pen(Color.Silver, 1), x1, y1, x2, y2);
            }
            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            return ms.ToArray();
        }
        private string CreateRandomCode(int codeCount)
        {
            string allChar = "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,W,X,Y,Z";
            string[] allCharArray = allChar.Split(',');
            string randomCode = "";
            int temp = -1;
            Random rand = new Random();
            for (int i = 0; i < codeCount; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
                }
                int t = rand.Next(35);
                if (temp == t)
                {
                    return CreateRandomCode(codeCount);
                }
                temp = t;
                randomCode += allCharArray[t];
            }
            return randomCode;
        }
        /// <summary>
        /// 创建验证码的图片
        /// </summary>
        public byte[] CreateValidateGraphic(string validateCode)
        {
            Bitmap image = new Bitmap((int)Math.Ceiling(validateCode.Length * 16.0), 27);
            Graphics g = Graphics.FromImage(image);
            try
            {
                //生成随机生成器
                Random random = new Random();
                //清空图片背景色
                g.Clear(Color.White);
                //画图片的干扰线
                for (int i = 0; i < 25; i++)
                {
                    int x1 = random.Next(image.Width);
                    int x2 = random.Next(image.Width);
                    int y1 = random.Next(image.Height);
                    int y2 = random.Next(image.Height);
                    g.DrawLine(new Pen(Color.Silver), x1, y1, x2, y2);
                }
                Font font = new Font("Arial", 13, (FontStyle.Bold | FontStyle.Italic));
                LinearGradientBrush brush = new LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height),
                 Color.Blue, Color.DarkRed, 1.2f, true);
                g.DrawString(validateCode, font, brush, 3, 2);
                //画图片的前景干扰点
                for (int i = 0; i < 100; i++)
                {
                    int x = random.Next(image.Width);
                    int y = random.Next(image.Height);
                    image.SetPixel(x, y, Color.FromArgb(random.Next()));
                }
                //画图片的边框线
                g.DrawRectangle(new Pen(Color.Silver), 0, 0, image.Width - 1, image.Height - 1);
                //保存图片数据
                MemoryStream stream = new MemoryStream();
                image.Save(stream, ImageFormat.Jpeg);
                //输出图片流
                return stream.ToArray();
            }
            finally
            {
                g.Dispose();
                image.Dispose();
            }
        }
        #endregion
    }
}
