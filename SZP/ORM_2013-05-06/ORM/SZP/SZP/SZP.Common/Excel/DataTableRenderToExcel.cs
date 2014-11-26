using System.Data;
using System.IO;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;

namespace Kibon.Common
{
    /// <summary>
    /// DataTable和Excel相互操作
    /// </summary>
    public class DataTableRenderToExcel
    {
        public static Stream RenderDataTableToExcel(DataTable SourceTable)
        {
            var workbook = new HSSFWorkbook();
            var ms = new MemoryStream();
            Sheet sheet = workbook.CreateSheet();
            Row headerRow = sheet.CreateRow(0);

            // handling header.  

            foreach (DataColumn column in SourceTable.Columns)

                headerRow.CreateCell(column.Ordinal).SetCellValue(column.ColumnName);


            // handling value.  

            int rowIndex = 1;


            foreach (DataRow row in SourceTable.Rows)

            {
                Row dataRow = sheet.CreateRow(rowIndex);


                foreach (DataColumn column in SourceTable.Columns)

                {
                    dataRow.CreateCell(column.Ordinal).SetCellValue(row[column].ToString());
                }


                rowIndex++;
            }


            workbook.Write(ms);

            ms.Flush();

            ms.Position = 0;


            sheet = null;

            headerRow = null;

            workbook = null;


            return ms;
        }


        public static void RenderDataTableToExcel(DataTable SourceTable, string FileName)
        {
            var ms = RenderDataTableToExcel(SourceTable) as MemoryStream;

            var fs = new FileStream(FileName, FileMode.Create, FileAccess.Write);

            byte[] data = ms.ToArray();


            fs.Write(data, 0, data.Length);

            fs.Flush();

            fs.Close();


            data = null;

            ms = null;

            fs = null;
        }


        public static DataTable RenderDataTableFromExcel(Stream ExcelFileStream, string SheetName, int HeaderRowIndex)
        {
            var workbook = new HSSFWorkbook(ExcelFileStream);

            Sheet sheet = workbook.GetSheet(SheetName);


            var table = new DataTable();


            Row headerRow = sheet.GetRow(HeaderRowIndex);

            int cellCount = headerRow.LastCellNum;


            for (int i = headerRow.FirstCellNum; i < cellCount; i++)

            {
                var column = new DataColumn(headerRow.GetCell(i).StringCellValue);

                table.Columns.Add(column);
            }


            int rowCount = sheet.LastRowNum;


            for (int i = (sheet.FirstRowNum + 1); i < sheet.LastRowNum; i++)

            {
                Row row = sheet.GetRow(i);

                DataRow dataRow = table.NewRow();


                for (int j = row.FirstCellNum; j < cellCount; j++)

                    dataRow[j] = row.GetCell(j).ToString();
            }


            ExcelFileStream.Close();

            workbook = null;

            sheet = null;

            return table;
        }


        public static DataTable RenderDataTableFromExcel(Stream ExcelFileStream, int SheetIndex, int HeaderRowIndex)
        {
            var workbook = new HSSFWorkbook(ExcelFileStream);

            Sheet sheet = workbook.GetSheetAt(SheetIndex);


            var table = new DataTable();


            Row headerRow = sheet.GetRow(HeaderRowIndex);

            int cellCount = headerRow.LastCellNum;


            for (int i = headerRow.FirstCellNum; i < cellCount; i++)

            {
                var column = new DataColumn(headerRow.GetCell(i).StringCellValue);

                table.Columns.Add(column);
            }


            int rowCount = sheet.LastRowNum;


            for (int i = (sheet.FirstRowNum + 1); i < sheet.LastRowNum; i++)

            {
                Row row = sheet.GetRow(i);

                DataRow dataRow = table.NewRow();


                for (int j = row.FirstCellNum; j < cellCount; j++)

                {
                    if (row.GetCell(j) != null)

                        dataRow[j] = row.GetCell(j).ToString();
                }


                table.Rows.Add(dataRow);
            }


            ExcelFileStream.Close();

            workbook = null;

            sheet = null;

            return table;
        }
    }
}

// DataTable table = new DataTable();  

// // 填充資料（由讀者自行撰寫）  

//// 產生 Excel 資料流。  

// MemoryStream ms = DataTableRenderToExcel.RenderDataTableToExcel(table) as MemoryStream;  

//// 設定強制下載標頭。  

// Response.AddHeader("Content-Disposition", string.Format("attachment; filename=Download.xls"));  

// // 輸出檔案。  

// Response.BinaryWrite(ms.ToArray());  

// ms.Close();  

// ms.Dispose();  

// //若是要讀取 Excel 檔案並存到 DataTable，只要設定上傳的 Excel 檔案資料流、試算表索引（或名稱）以及起始列索引值即可：  

// if (this.fuUpload.HasFile)  
//{  

//    // 讀取 Excel 資料流並轉換成 DataTable。  

//    DataTable table = DataTableRenderToExcel.RenderDataTableFromExcel(this.fuUpload.FileContent, 1, 0);  

//    this.gvExcel.DataSource = table;  

//    this.gvExcel.DataBind();  

//} 