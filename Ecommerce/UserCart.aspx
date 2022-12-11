<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserCart.aspx.cs" Inherits="Ecommerce.UserCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label1" runat="server" CssClass="fw-bold fs-2 " Text="Il tuo carrello spaziale"></asp:Label>
        <asp:Label ID="Label2" Visible="true" runat="server" Text="è vuoto!" ></asp:Label>
        <asp:HyperLink ID="HomeLink" Visible="true" runat="server" NavigateUrl="~/Home.aspx">Rimediamo</asp:HyperLink>
        <div class="row">
        <asp:Repeater ID="ProdRepeater" runat="server" ItemType="Ecommerce.Classes.Product">
            <ItemTemplate>
                <div class="col-4 p-2">


                    <div class="card my-3 mt-4 border-0" style="position: relative;">
                        <div class="prodImgContainer p-2 pt-3">
                            <img src="<%# Item.ProdImgURL %>" class="card-img-top" alt="prod img" style="object-fit: contain; height: 200px;">
                        </div>
                        <div class="card-body px-2" style="text-align: center">
                            <h5 class="card-title"><%# Item.NameProd %></h5>

                            <p class="card-text text-success fw-bold"><%#Item.ProdPrice.ToString("c2") %></p>
                            <a href="ProductDetail.aspx?prodId=<%# Item.ProductID %>" class="btn btn-success" style="width: 50%;">Dettagli</a>
                            <%--                        <asp:HyperLink ID="HyperLink1" CssClass="btn btn btn-success w-50" NavigateUrl="~/ProductDetail.aspx?prodId=<%# Item.ProductID %>" runat="server">Dettagli</asp:HyperLink>--%>
                            <a href="#" class="btn btn-warning fw-bold" style="width: 50%; margin-block:1em">Buy now</a>
                        </div>
                    </div>

                </div>

            </ItemTemplate>
        </asp:Repeater>
            </div>
        <asp:Button ID="ClearCartBtn" runat="server" Text="Svuota il carrello" OnClick="ClearCartBtn_Click" />
        </div>
</asp:Content>
