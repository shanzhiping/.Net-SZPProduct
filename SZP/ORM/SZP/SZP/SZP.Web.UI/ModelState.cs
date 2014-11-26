using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Web.UI
{
    public class ModelState
    {
        public ModelState(string name, Exception ex, object value)
        {
            this.Name = name;
            this.Error = ex;
            this.Value = value;
        }
        public string Name { get; set; }
        public Exception Error { get; set; }
        public object Value { get; set; }
    }
}
