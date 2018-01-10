<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="MyStoreWebApp.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">
   
    <div class="row">
 <div class="col-lg-8">
 <h1>Product Details</H1>
 </div>
        <div class="col-lg-4"> 
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Resources/my_logo.png" Width="59px" />
        </div>
        </div>
      
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">
    <div class="row">
        <div class="col-lg-2">
            &nbsp;
        </div>
        <div class="col-lg-8">

            <asp:DetailsView ID="dvProducts" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="PRODUCT_CODE" DataSourceID="ProductDetailDataSource" CssClass="table table-bordered">
                <Fields>
                    <asp:BoundField DataField="PRODUCT_CODE" HeaderText="PRODUCT_CODE" ReadOnly="True" SortExpression="PRODUCT_CODE" />
                    <asp:BoundField DataField="PRODUCT_DESCRIPTION" HeaderText="PRODUCT_DESCRIPTION" SortExpression="PRODUCT_DESCRIPTION" />
                    <asp:BoundField DataField="PRODUCT_INDATE" HeaderText="PRODUCT_INDATE" SortExpression="PRODUCT_INDATE" />
                    <asp:BoundField DataField="PRODUCT_QTYOH" HeaderText="PRODUCT_QTYOH" SortExpression="PRODUCT_QTYOH" />
                    <asp:BoundField DataField="PRODUCT_MIN" HeaderText="PRODUCT_MIN" SortExpression="PRODUCT_MIN" />
                    <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="PRODUCT_PRICE" SortExpression="PRODUCT_PRICE" />
                    <asp:BoundField DataField="PRODUCT_DISCOUNT" HeaderText="PRODUCT_DISCOUNT" SortExpression="PRODUCT_DISCOUNT" />
                    <asp:BoundField DataField="VENDOR_CODE" HeaderText="VENDOR_CODE" SortExpression="VENDOR_CODE" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="ProductDetailDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT PRODUCT_CODE, PRODUCT_DESCRIPTION, PRODUCT_INDATE, PRODUCT_QTYOH, PRODUCT_MIN, PRODUCT_PRICE, PRODUCT_DISCOUNT, VENDOR_CODE FROM Store.Product WHERE (PRODUCT_CODE = @parmProductCode)">
                <SelectParameters>
                    <asp:SessionParameter Name="parmProductCode" SessionField="ssProductCode" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="col-lg-2">
            &nbsp;
        </div>
    </div>
    <div class="row">
<div class="col-lg-12">
&nbsp;
</div>
</div>
<div class="row">
<div class="col-lg-12">
&nbsp;
</div>
</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FOOTER" runat="server">
</asp:Content>
