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

            ProductImage.ImageUrl = currentProduct.ProdImgURL;
            ProdNameLabel.Text = currentProduct.NameProd;
            DescriptionLabel.Text = currentProduct.DescriptionProd;
            PriceLabel.Text = currentProduct.ProdPrice.ToString("c2");

        }

        protected void CartAddBtn_Click(object sender, EventArgs e)
        {
            int ProductID = Convert.ToInt32(Request.QueryString["prodId"]);
            foreach (Product prod in Home.Inventory)
            {
                if (prod.ProductID == ProductID)
                {
                    UserCart.Cart.Add(prod);

                }
            }

            AddedLabel.Visible = true;
            
        }

        
    }
}