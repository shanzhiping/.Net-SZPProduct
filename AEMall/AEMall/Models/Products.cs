using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace Models
{
    [MetadataType(typeof(ProductsMetaData))]
    [DisplayName("Products")]
    public partial class Products
    {
        public Products()
        {
            this.Id = Guid.NewGuid();
        }
        public class ProductsMetaData
        {
            [DisplayName("编号")]
            [ScaffoldColumn(false)]
            public Guid Id { get; set; }

            [DisplayName("名称")]
            [Required(ErrorMessage = "名称不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Name { get; set; }

            [DisplayName("单位")]
            [Required(ErrorMessage = "单位不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object SKU { get; set; }

            [DisplayName("所属地区")]
            [Required(ErrorMessage = "所属地区不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = true)]
            [DataType("DropDownList")]
            public object RegionId { get; set; }

            [DisplayName("品牌")]
            [Required(ErrorMessage = "品牌不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Brand { get; set; }

            [DisplayName("描述")]
            [Required(ErrorMessage = "描述不得为空")]
            [DataType(DataType.MultilineText)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Description { get; set; }

            [DisplayName("重量（Kg）")]
            [Required(ErrorMessage = "重量（Kg）不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Weight { get; set; }

            [DisplayName("关键词")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Keywords { get; set; }


            [DisplayName("推荐？")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            [DataType("Boolean")]
            public object IsRecommended { get; set; }

            [DisplayName("售价")]
            [Required(ErrorMessage = "售价不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object SalePrice { get; set; }

            [DisplayName("市场价")]
            [Required(ErrorMessage = "市场价不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object MarketPrice { get; set; }

            [DisplayName("已售数量")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object SoldCount { get; set; }

            [DisplayName("促销折扣")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Discount { get; set; }

            [DisplayName("纬度")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Latitude { get; set; }

            [DisplayName("经度")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Longitude { get; set; }

            [DisplayName("库存")]
            [Required(ErrorMessage = "库存不得为空")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object Stock { get; set; }

            [DisplayName("增加日期")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object CreateTime { get; set; }

            [DisplayName("浏览次数")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object VistiCounts { get; set; }

            [DisplayName("上架用户")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public object SuperId { get; set; }
        }
    }
}
