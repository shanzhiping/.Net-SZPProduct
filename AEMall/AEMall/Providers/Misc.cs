using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

namespace System
{
  public static  class Misc
    {
      /// <summary>
      /// 通用图片处理方法
      /// </summary>
        /// <param name="fromUrl">图片来源绝对地址（不能和保存地址相同）</param>
        /// <param name="saveUrl">图片保存绝对地址（不能和来源地址相同）</param>
      /// <param name="width">目标图片宽最大值</param>
        /// <param name="height">目标图片高最大值</param>
      /// <param name="wText">图片水印文字</param>
      /// <param name="wUrl">图片水印图片绝对地址</param>
      public static void MakeThumbnail(string fromUrl, string saveUrl, Double width, Double height, string wText, string wUrl)
      {
          //从文件取得图片对象，并使用流中嵌入的颜色管理信息
          Image image = Image.FromFile(fromUrl);
          //缩略图宽、高
          Double Width = image.Width, Height = image.Height;
          //宽大于模版的横图
          if (image.Width > image.Height || image.Width == image.Height)
          {
              if (image.Width > width)
              {
                  //宽按模版，高按比例缩放
                  Width = width;
                  Height = image.Height * (Width / image.Width);
              }
          }
          //高大于模版的竖图
          else
          {
              if (image.Height > height)
              {
                  //高按模版，宽按比例缩放
                  Height = height;
                  Width = image.Width * (Height / image.Height);
              }
          }
          //取得图片大小
          Size size = new Size((int)Width, (int)Height);
          //新建一个bmp图片
          Image bitmap = new Bitmap(size.Width, size.Height);
          //新建一个画板
          Graphics g = Graphics.FromImage(bitmap);
          //设置高质量插值法
          g.InterpolationMode = InterpolationMode.High;
          //设置高质量,低速度呈现平滑程度
          g.SmoothingMode = SmoothingMode.HighQuality;
          //清空一下画布
          g.Clear(Color.White);
          //在指定位置画图
          g.DrawImage(image, new Rectangle(0, 0, bitmap.Width, bitmap.Height),
          new Rectangle(0, 0, image.Width, image.Height), GraphicsUnit.Pixel);
          ///文字水印
          //Graphics G = Graphics.FromImage(bitmap);
          //Font f = new Font("Microsoft Yahei", 10);
          //Brush b = new SolidBrush(Color.Black);
          //G.DrawString("www.heejaa.com", f, b, 10, 10);
          //G.Dispose();
          ///图片水印
          //Image WaterImage = System.Drawing.Image.FromFile(System.Web.HttpContext.Current.Server.MapPath("pic/1.gif"));
          //Graphics wi = Graphics.FromImage(bitmap);
          //wi.DrawImage(WaterImage, new Rectangle(bitmap.Width - WaterImage.Width, bitmap.Height - WaterImage.Height, WaterImage.Width, WaterImage.Height), 0, 0, WaterImage.Width, WaterImage.Height, GraphicsUnit.Pixel);
          //WaterImage.Dispose();
          //wi.Dispose();
          //WaterImage.Dispose();
          //保存缩略图
          bitmap.Save(saveUrl, ImageFormat.Jpeg);
          g.Dispose();
          image.Dispose();
          bitmap.Dispose();
      } 
    }
}
