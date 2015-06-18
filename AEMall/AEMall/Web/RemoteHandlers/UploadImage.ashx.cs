using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace Web.RemoteHandlers
{
    /// <summary>
    /// UploadImage 的摘要说明
    /// </summary>
    public class UploadImage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            DateTime date = DateTime.Now;
            context.Response.ContentType = "text/plain";
            context.Response.Expires = -1;
            try
            {

                HttpPostedFile postedFile = context.Request.Files["Filedata"];               
                string tempPath = string.Empty;
                string originalpath = string.Empty;
                string publishedPath = string.Empty;
                string thumbnailsPath = string.Empty;
                tempPath = "/" + System.Configuration.ConfigurationManager.AppSettings["FolderGalleryPath"] + "/{ReplaceThisPath}/" + date.Year + "/" + date.Month + "/";
                originalpath = context.Server.MapPath(tempPath.Replace("{ReplaceThisPath}", "Original"));
                publishedPath = context.Server.MapPath(tempPath.Replace("{ReplaceThisPath}", "Published"));
                thumbnailsPath = context.Server.MapPath(tempPath.Replace("{ReplaceThisPath}", "Thumbnails"));
                tempPath = tempPath.Replace("{ReplaceThisPath}", "Thumbnails");
                string filename = postedFile.FileName;
                string sExtension = filename.Substring(filename.LastIndexOf('.'));
                CreateSubDir(originalpath);
                CreateSubDir(publishedPath);
                CreateSubDir(thumbnailsPath);
                string sNewFileName = Guid.NewGuid().ToString().ToUpper();
                //保存原图
                postedFile.SaveAs(originalpath + @"/" + sNewFileName + sExtension);
                //保存加水印图
                Misc.MakeThumbnail(originalpath + @"/" + sNewFileName + sExtension, publishedPath + @"/" + sNewFileName + sExtension, 300, 300, null, null);
                //保存缩略图
                Misc.MakeThumbnail(originalpath + @"/" + sNewFileName + sExtension, thumbnailsPath + @"/" + sNewFileName + sExtension, 125, 125, null, null);
                context.Response.Write(tempPath + sNewFileName + sExtension);
                context.Response.StatusCode = 200;
            }
            catch (Exception ex)
            {
                context.Response.Write("错误: " + ex.Message);
            }
        }
        public void CreateSubDir(string path)
        {
            if (!Directory.Exists(path))
                Directory.CreateDirectory(path);
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}