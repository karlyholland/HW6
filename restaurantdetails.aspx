<%@ Page Language="VB" AutoEventWireup="false" CodeFile="restaurantdetails.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <div id="wrapper">
    <form id="form1" runat="server">
    <div></div>
    
        <asp:SqlDataSource ID="detailsDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_BurgersWebsite %>" 
            SelectCommand="SELECT * FROM [Burger] WHERE ([burgerID] = @burgerID)"
            DeleteCommand="DELETE FROM [Burger] WHERE [burgerID] = @burgerID"
            InsertCommand="INSERT INTO [Burger] ([resName], [address], [cost], [details], [phone]) VALUES (@resName, @address, @cost, @details, @phone)"
            UpdateCommand="UPDATE [Burger] SET [resName] = @resName, [address] = @address, [cost] = @cost, [details] = @details, [phone] = @phone WHERE [burgerID] = @burgerID">
         
            <DeleteParameters>
                <asp:Parameter Name="burgerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="resName" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="cost" Type="String" />
                <asp:Parameter Name="details" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="burgerID" QueryStringField="burgerID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="resName" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="cost" Type="String" />
                <asp:Parameter Name="details" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="burgerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
         <img src="./images/header.png" alt="Iowa City Burgers" width:"750px"; />
        </div>
        <div id="container">

            <div id="menu">
                <ul id="navlist">
                    <li><a href="./default.aspx">Home</a></li>
                    <li><a href="./aboutus.aspx">About Us</a></li>
                    <li><a href="./contactus.aspx">Contact</a></li>
                </ul>
                <br />
        <div id="content">
        
            <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateRows="False" DataKeyNames="burgerID" DataSourceID="detailsDataSource" 
            Height="450px" Width="700px">
            <Fields>
                <asp:BoundField DataField="resName" HeaderText="Restaurant Name" SortExpression="resName" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
                <asp:BoundField DataField="cost" HeaderText="Burger Cost" />
                <asp:BoundField DataField="details" HeaderText="Burger Details" />
          
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button"/>
          
            </Fields>
        </asp:DetailsView>
            <br />
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
