<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Ecommerce.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/MasterStyle.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
        <h3 class="mt-5 mb-2 d-inline fs-2">Scopri il catalogo!</h3>
        </div>
        <div class="row flex-wrap justify-content-start">
    <asp:Repeater ID="ProdRepeater" runat="server" ItemType="Ecommerce.Classes.Product">
        <ItemTemplate>
            <div class="col-4 p-2">


                <div class="card my-3 mt-4 border-0" style=" position: relative;">
                    <div class="prodImgContainer p-2 pt-3">
                        <img src="<%# Item.ProdImgURL %>" class="card-img-top" alt="prod img" style="object-fit:contain; height: 200px;">
                    </div>
                    <div class="card-body px-2" style="text-align:center">
                        <h5 class="card-title"><%# Item.NameProd %></h5>
                        
                        <p class="card-text text-success fw-bold"><%#Item.ProdPrice.ToString("c2") %></p>
                        <a href="ProductDetail.aspx?prodId=<%# Item.ProductID %>" class="btn btn-success" style="width:50%;">Dettagli</a>
<%--                        <asp:HyperLink ID="HyperLink1" CssClass="btn btn btn-success w-50" NavigateUrl="~/ProductDetail.aspx?prodId=<%# Item.ProductID %>" runat="server">Dettagli</asp:HyperLink>--%>
                    </div>
                </div>

            </div>
            
        </ItemTemplate>
    </asp:Repeater>
            </div>
    </div>
</asp:Content>
