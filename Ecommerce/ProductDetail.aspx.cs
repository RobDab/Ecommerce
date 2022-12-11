using Ecommerce.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ProductID = Convert.ToInt32(Request.QueryString["prodId"]);

            Product currentProduct = new Product();

            foreach(Product prod in Home.Inventory)
            {
                if(prod.ProductID == ProductID)
                {
                    currentProduct = prod;
                }
            }

            Label1.Text = currentProduct.NameProd;
        }

        
    }
}