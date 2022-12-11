using Ecommerce.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ProdRepeater.DataSource = Inventory;
            ProdRepeater.DataBind();
        }

        public static List<Product> Inventory = new List<Product>()
        {
            new Product(){
                ProductID = 1,
                NameProd="Picle Rick socks",
                DescriptionProd = "Calzini antiscivolo uomo a pantofola a maglia spessa con rivestimento extra caldo in sherpa.",
                ProdPrice = 19.99,
                ProdImgURL = "Assets/product_Images/pickleRick_socks.jpg"
            },
            new Product()
            {
                ProductID = 2,
                NameProd = "Keychain Rick",
                DescriptionProd = "Portachiavi in gomma con Rick Sanchez",
                ProdPrice = 7.99,
                ProdImgURL = "Assets/product_Images/Rick_keychain.jpg"
            },
             new Product()
            {
                ProductID = 3,
                NameProd = "Pickle Rick Peluche",
                DescriptionProd = "Sorridente peluche per ogni età, di Rick nella forma di pickle Rick!",
                ProdPrice = 14.99,
                ProdImgURL = "Assets/product_Images/peluche_pickleRick.jpg"
            },
              new Product()
             {
                ProductID = 4,
                NameProd = "Monopoly Rick&Morty",
                DescriptionProd = "Versione del famoso gioco da tavolo nell'RickVerse. Get Schwifty!",
                ProdPrice = 24.99,
                ProdImgURL = "Assets/product_Images/monopoly_R&M.jpg"
             }, 
              new Product()
             {
                ProductID =5,
                NameProd = "FunkoPOP Rick Sanchez",
                DescriptionProd = "Testa danzante della figure di Rick.",
                ProdPrice = 19.99,
                ProdImgURL = "Assets/product_Images/funko_Rick.jpg"
             },
               new Product()
            {
                ProductID = 6,
                NameProd = "Funko Portal Gun",
                DescriptionProd = "Viaggia anche tu nel multiverso con la portal gun di Rick!",
                ProdPrice = 29.99,
                ProdImgURL = "Assets/product_Images/funko_portalGun.jpg"
            },   new Product()
                {
                ProductID = 7,
                NameProd = "Funko Morty braccio senziente",
                DescriptionProd = "FunkoPOP di Morty con l'amorevole braccio killer senziente!",
                ProdPrice = 24.99,
                ProdImgURL = "Assets/product_Images/funko_Morty_sentientArm.jpg"
                },
               new Product()
            {
                ProductID = 8,
                NameProd = "Fiaschetta WubbaLubba",
                DescriptionProd = "Porta sempre con te lo spirito di Rick Sanchez con la fiaschetta incisa!",
                ProdPrice = 14.99,
                ProdImgURL = "Assets/product_Images/fiaschetta_WubbaLubba.jpg"
            }


        };

    }
}