using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace System.Web.Mvc
{
    public class MultiCulturalDisplayName : DisplayNameAttribute
    {
        private DisplayAttribute display;

        public MultiCulturalDisplayName(Type resourceType, string resourceName)
        {
            this.display = new DisplayAttribute { ResourceType = resourceType, Name = resourceName };
        }

        public override string DisplayName
        {
            get
            {
                return display.GetName();
            }
        }
    } 

}
