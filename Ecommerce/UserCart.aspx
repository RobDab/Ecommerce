﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserCart.aspx.cs" Inherits="Ecommerce.UserCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" id="CartContainer" runat="server" style=" margin-top: 2em; text-align: center" >
        <asp:Label ID="Label1" runat="server" CssClass="fw-bold fs-2 mt-5" Text="Il tuo carrello spaziale"></asp:Label>

        <div class="d-flex flex-column" style="text-align:center;" runat="server">
            <asp:Label ID="Label2" CssClass="my-3 fs-3" Visible="true" runat="server" Text="è vuoto!" ></asp:Label>
            <asp:HyperLink ID="HomeLink" CssClass="btn btn-success fw-bold fs-3 my-5 w-50 mx-auto" Visible="true" runat="server" NavigateUrl="~/Home.aspx">Rimediamo</asp:HyperLink>
        </div>

        <div class="row" id="ProdRow" runat="server">
        <asp:Repeater ID="ProdRepeater" runat="server" ItemType="Ecommerce.Classes.Product">
            <ItemTemplate>
                <div class="col-4 p-2">


                    <div class="card my-3 mt-4 border-0" style="">
                        <div class="prodImgContainer p-2 pt-3">
                            <img src="<%# Item.ProdImgURL %>" class="card-img-top" alt="prod img" style="object-fit: contain; height: 200px;">
                        </div>
                        <div class="card-body px-2" style="text-align: center">
                            <h5 class="card-title"><%# Item.NameProd %></h5>

                            <p class="card-text text-success fw-bold"><%#Item.ProdPrice.ToString("c2") %></p>
                            <a href="ProductDetail.aspx?prodId=<%# Item.ProductID %>" class="btn btn-success" style="width: 50%;">Dettagli</a>
                            <%--<asp:HyperLink ID="HyperLink1" CssClass="btn btn btn-success w-50" NavigateUrl="~/ProductDetail.aspx?prodId=<%# Item.ProductID %>" runat="server">Dettagli</asp:HyperLink>--%>
                            <a href="#" class="btn btn-warning fw-bold" style="width: 50%; margin-block:1em">Buy now</a>
                        </div>
                    </div>

                </div>

            </ItemTemplate>
        </asp:Repeater>
            </div>
        <asp:Button ID="ClearCartBtn" Visible="false" runat="server" CssClass="btn btn-danger fw-bold mb-4 mx-auto" Text="Svuota il carrello" OnClick="ClearCartBtn_Click" />
        </div>
    
</asp:Content>
