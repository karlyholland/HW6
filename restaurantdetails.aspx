<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
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

</asp:Content>