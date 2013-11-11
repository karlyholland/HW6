<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <div id="wrapper">
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:cs_BurgersWebsite %>"
            SelectCommand="SELECT * FROM [Burger]">

        </asp:SqlDataSource>
        </div>

        <div>
         <img src="./images/header.png" alt="Iowa City Burgers" width:"750px";>
        </div>
        <div id="container">       
            <div id="menu">
                <ul id="navlist">
                    <li><a href="./default.aspx">Home</a></li>
                    <%--<li><a href="newrecipe.aspx">New Recipe</a></li>--%>
                    <li><a href="./aboutus.aspx">About Us</a></li>
                    <li><a href="./contactus.aspx">Contact</a></li>
                </ul>
            <br /><br />


        <div id="content">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="burgerID" DataSourceID="SqlDataSource1" Width="700px">
            <Columns>
                <asp:BoundField DataField="resName" HeaderText="Restaurant" SortExpression="resName" />
                <asp:BoundField DataField="cost" HeaderText="Burger Cost" SortExpression="cost" />
                <asp:BoundField DataField="details" HeaderText="Burger Details" SortExpression="details" />
                <asp:HyperLinkField DataNavigateUrlFields="burgerID" DataNavigateUrlFormatString="restaurantdetails.aspx?burgerID={0}" Text="Restaurant Details" />
            </Columns>
        </asp:GridView>
        </div>

            <div id="footer">
                <br />
                &copy;
                <asp:Label ID="lblCopy" runat="server" Text=""></asp:Label>
                6K:183 Software Design &amp; Development</div>
        </div>
    </div>
    </form>
    </div>
</body>
</html>
