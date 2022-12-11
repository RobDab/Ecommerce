using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecommerce.Classes
{
    public  class Product
    {
        public int ProductID { get; set; }

        public string NameProd { get; set; }

        public string DescriptionProd { get; set; }

        public string ProdImgURL { get; set; }

        public double ProdPrice { get; set; }

        public int StockProd { get; set; }

        
    }    
}