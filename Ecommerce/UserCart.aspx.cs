using Ecommerce.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class UserCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProdRepeater.DataSource = Cart;
            ProdRepeater.DataBind();
            
            if (Cart.Count() > 0)
            {
                Label2.Visible = false;
                //Label2.Parent.Visible = false;
                //Control CartContainer = FindControl("CartContainer");
                //CartContainer.Visible = false;
                //CartContainer.Style.Add("display", "none");
                HomeLink.Visible = false;
                ClearCartBtn.Visible = true;
            }
            else
            {
                CartContainer.Style.Add("height", "70vh");
            }

            if (IsPostBack)
            {
                ProdRow.Attributes.Add("style", "display:none");
            }

            

        }
        

        protected void ClearCartBtn_Click(object sender, EventArgs e)
        {
            Cart.Clear();
            Label2.Visible = true;
            HomeLink.Visible = true;
            ClearCartBtn.Visible = false;

            
        }

        public static List<Product> Cart = new List<Product>();
    }
}