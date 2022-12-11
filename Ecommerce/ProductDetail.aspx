<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Ecommerce.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-4" style="height:75vh">
        <div>
            <asp:Label ID="ProdNameLabel" CssClass="fs-2 fw-bold" runat="server" Text=""></asp:Label>
        </div>
        <div class="row">
            <div class="imgContainer col-5 my-5 ms-5">
                <asp:Image ID="ProductImage" runat="server" />
            </div>
            <div class="productDetail col-6 mt-5 d-flex flex-column">
                <%--<asp:Label ID="ProdNameLabel" runat="server" Text=""></asp:Label>--%>
                <p class="fs-3 fw-bold">Dettagli:</p>
                <asp:Label ID="DescriptionLabel" CssClass="fs-5" runat="server" Text=""></asp:Label>
                <asp:Label ID="AddedLabel" runat="server" Visible="false" CssClass="mt-3 fw-bold text-dark" Text="Aggiunto al carrello"></asp:Label>
                <asp:Label ID="PriceLabel" CssClass="text-success fs-4 fw-bold my-3" runat="server" Text=""></asp:Label>
                <asp:Button ID="CartAddBtn" CssClass="my-2 fs-5 btn btn-warning text-dark fw-bold" runat="server" Text="Aggiungi al carrello" OnClick="CartAddBtn_Click" />
            </div>
        </div>
    </div>
</asp:Content>
