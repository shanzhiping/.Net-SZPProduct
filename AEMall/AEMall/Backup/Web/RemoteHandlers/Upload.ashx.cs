using System;
using System.IO;
using System.Web;

namespace Web.RemoteHandlers {

    public class Upload : IHttpHandler {

        public void ProcessRequest(HttpContext context) {
            context.Response.ContentType = "text/plain";
            context.Response.Expires = -1;
            try {

                HttpPostedFile postedFile = context.Request.Files["Filedata"];

                string savepath = "";
                string tempPath = "";
                tempPath = System.Configuration.ConfigurationManager.AppSettings["FolderGalleryPath"];
                savepath = context.Server.MapPath(tempPath);
                string filename = postedFile.FileName;
                string sExtension = filename.Substring(filename.LastIndexOf('.'));
                if (!Directory.Exists(savepath))
                    Directory.CreateDirectory(savepath);

                string sNewFileName = DateTime.Now.ToString(Guid.NewGuid().ToString());
                postedFile.SaveAs(savepath + @"\" + sNewFileName + sExtension);
                context.Response.Write(tempPath + sNewFileName + sExtension);
                context.Response.StatusCode = 200;
            }
            catch (Exception ex) {
                context.Response.Write("错误: " + ex.Message);
            }
        }

        public bool IsReusable {
            get {
                return false;
            }
        }
    }
}
