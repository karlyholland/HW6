<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:cs_BurgersWebsite %>"
            SelectCommand="SELECT * FROM [Burger]">

        </asp:SqlDataSource>
        </div>

            <br />
            <asp:Label ID="Label1" runat="server" Text="Search:"></asp:Label>
&nbsp;<asp:TextBox ID="tbSearch" runat="server"></asp:TextBox>
            <br />
            <br />

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="burgerID" DataSourceID="SqlDataSource1" Width="700px">
            <Columns>
                <asp:BoundField DataField="resName" HeaderText="Restaurant" SortExpression="resName" />
                <asp:BoundField DataField="cost" HeaderText="Burger Cost" SortExpression="cost" />
                <asp:BoundField DataField="details" HeaderText="Burger Details" SortExpression="details" />
                <asp:HyperLinkField DataNavigateUrlFields="burgerID" DataNavigateUrlFormatString="restaurantdetails.aspx?burgerID={0}" Text="Restaurant Details" />
            </Columns>
        </asp:GridView>
            <br />

    </asp:Content>