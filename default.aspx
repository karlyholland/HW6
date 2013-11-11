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
    <div></div>

        <asp:SqlDataSource ID="recipeDataSource" runat="server"
            ConnectionString="<%$ ConnectionStrings:csRecipes %>"
            SelectCommand="SELECT * FROM [Recipe]"
            DeleteCommand="DELETE FROM [Recipe] WHERE [recipeID] = @recipeID"
            InsertCommand="INSERT INTO [Recipe] ([recipeName], [submittedBy],
            [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5],
            [prep], [notes])
            VALUES (@recipeName, @submittedBy, @ingredient1, @ingredient2, @ingredient3,
            @ingredient4, @ingredient5, @prep, @notes)"
            UpdateCommand="UPDATE [Recipe] SET [recipeName] = @recipeName,
            [submittedBy] = @submittedBy, [ingredient1] = @ingredient1,
            [ingredient2] = @ingredient2, [ingredient3] = @ingredient3,
            [ingredient4] = @ingredient4, [ingredient5] = @ingredient5,
            [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
         <img src="./images/header.png" alt="Wicked Easy Recipes - Using 5 Ingredients or Less!" width:"750px";>
        </div>
        <div id="container">       
            <div id="menu">
                <ul id="navlist">
                    <li><a href="./default.aspx">Home</a></li>
                    <li><a href="newrecipe.aspx">New Recipe</a></li>
                    <li><a href="./aboutus.aspx">About Us</a></li>
                    <li><a href="./contactus.aspx">Contact</a></li>
                </ul>
            <br /><br />

        <div id="content">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="recipeDataSource" Width="700px">
            <Columns>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="recipedetails.aspx?recipeID={0}" Text="Select" />
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
