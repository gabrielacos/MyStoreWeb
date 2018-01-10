<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="MyStoreWebApp.CustomerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MENU" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MESSAGE" runat="server">
   
    <div class="row">
 <div class="col-lg-8">
 <h1>Customer Details</H1>
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
                <asp:DetailsView ID="dvCustomerDetails" runat="server" Height="50px" Width="125px" DataSourceID="dbStoreCustomer" CssClass="table table-bordered" AutoGenerateRows="False" DataKeyNames="CUSTOMER_CODE">
                    <Fields>
                        <asp:BoundField DataField="CUSTOMER_CODE" HeaderText="CUSTOMER_CODE" ReadOnly="True" SortExpression="CUSTOMER_CODE" />
                        <asp:BoundField DataField="CUSTOMER_LNAME" HeaderText="CUSTOMER_LNAME" SortExpression="CUSTOMER_LNAME" />
                        <asp:BoundField DataField="CUSTOMER_FNAME" HeaderText="CUSTOMER_FNAME" SortExpression="CUSTOMER_FNAME" />
                        <asp:BoundField DataField="CUSTOMER_INITIAL" HeaderText="CUSTOMER_INITIAL" SortExpression="CUSTOMER_INITIAL" />
                        <asp:BoundField DataField="CUSTOMER_AREACODE" HeaderText="CUSTOMER_AREACODE" SortExpression="CUSTOMER_AREACODE" />
                        <asp:BoundField DataField="CUSTOMER_PHONE" HeaderText="CUSTOMER_PHONE" SortExpression="CUSTOMER_PHONE" />
                        <asp:BoundField DataField="CUSTOMER_CREDITLIMIT" HeaderText="CUSTOMER_CREDITLIMIT" SortExpression="CUSTOMER_CREDITLIMIT" />
                        <asp:BoundField DataField="CUSTOMER_BALANCE" HeaderText="CUSTOMER_BALANCE" SortExpression="CUSTOMER_BALANCE" />
                        <asp:BoundField DataField="CUSTOMER_DATELSTPMT" HeaderText="CUSTOMER_DATELSTPMT" SortExpression="CUSTOMER_DATELSTPMT" />
                        <asp:BoundField DataField="CUSTOMER_DATELSTPUR" HeaderText="CUSTOMER_DATELSTPUR" SortExpression="CUSTOMER_DATELSTPUR" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="dbStoreCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstringStoreDB %>" SelectCommand="SELECT CUSTOMER_CODE, CUSTOMER_LNAME, CUSTOMER_FNAME, CUSTOMER_INITIAL, CUSTOMER_AREACODE, CUSTOMER_PHONE, CUSTOMER_CREDITLIMIT, CUSTOMER_BALANCE, CUSTOMER_DATELSTPMT, CUSTOMER_DATELSTPUR FROM Store.Customer WHERE (CUSTOMER_CODE = @parmCustomerCode)">
                    <SelectParameters>
                        <asp:SessionParameter Name="parmCustomerCode" SessionField="ssCustomerCode" />
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
