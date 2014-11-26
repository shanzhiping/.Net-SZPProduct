using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Web.UI
{
    public class ModelStateDictionary : List<ModelState>
    {
        public bool IsValid
        {
            get
            {
                for (int i = 0; i < this.Count; i++)
                {
                    if (this[i].Error != null)
                    {
                        return false;
                    }

                }
                return true;
            }
        }
    }
}
