using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Core
{
    public class PagedList<T>
    {
        public int PageId { get; set; }
        public int PageSize { get; set; }
        public int RecordCount { get; set; }
        public int PageCount { get; set; }
        public IList<T> Data { get; set; }

        public PagedList()
        {
        }

        public PagedList(int pageId, int pageSize, int recordCount, IList<T> data)
        {
            this.PageId = pageId;
            this.PageSize = pageSize;
            this.RecordCount = recordCount;
            this.Data = data;
            if (recordCount % pageSize == 0)
            {
                this.PageCount = recordCount / pageSize;
            }
            else
            {
                this.PageCount = recordCount / pageSize + 1;
            }
        }
    }
}
