<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="VendorDetails.aspx.cs" Inherits="MyStoreWebApp.VendorDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">
     
    <div class="row">
 <div class="col-lg-8">
 <h1>Vendor Details</H1>
 </div>
        <div class="col-lg-4"> 
            <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Resources/my_logo.png" Width="59px" />
        </div>
        </div>
        
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BODY" runat="server">
    <div class="row">
<div class="col-lg-12">
&nbsp;
</div>
</div>
<div class="row">
    <div class="row">
        <div class="col-lg-2">
            &nbsp;
            </div>
<div class="col-lg-8">
    <asp:DetailsView ID="dvVendors" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="VENDOR_CODE" DataSourceID="dvStoreVendors" CssClass="table table-bordered">
        <Fields>
            <asp:BoundField DataField="VENDOR_CODE" HeaderText="VENDOR_CODE" ReadOnly="True" SortExpression="VENDOR_CODE" />
            <asp:BoundField DataField="VENDOR_NAME" HeaderText="VENDOR_NAME" SortExpression="VENDOR_NAME" />
            <asp:BoundField DataField="VENDOR_CONTACT" HeaderText="VENDOR_CONTACT" SortExpression="VENDOR_CONTACT" />
            <asp:BoundField DataField="VENDOR_AREACODE" HeaderText="VENDOR_AREACODE" SortExpression="VENDOR_AREACODE" />
            <asp:BoundField DataField="VENDOR_PHONE" HeaderText="VENDOR_PHONE" SortExpression="VENDOR_PHONE" />
            <asp:BoundField DataField="VENDOR_STATE" HeaderText="VENDOR_STATE" SortExpression="VENDOR_STATE" />
            <asp:BoundField DataField="VENDOR_ORDER" HeaderText="VENDOR_ORDER" SortExpression="VENDOR_ORDER" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="dvStoreVendors" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT VENDOR_CODE, VENDOR_NAME, VENDOR_CONTACT, VENDOR_AREACODE, VENDOR_PHONE, VENDOR_STATE, VENDOR_ORDER FROM Store.Vendor WHERE (VENDOR_CODE = @parmVendorCode)">
        <SelectParameters>
            <asp:SessionParameter Name="parmVendorCode" SessionField="ssVendorCode" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dbStore" runat="server"></asp:SqlDataSource>
</div>
        
        <div class="col-lg-2">
            &nbsp;
            </div>
</div>
<div class="col-lg-12">
&nbsp;
</div>
</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FOOTER" runat="server">
</asp:Content>
