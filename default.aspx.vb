﻿
Partial Class gridview
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblCopy.Text = DateTime.Now.Year

    End Sub

    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged

        Dim searchWord As String
        searchWord = "Select * From Burger where (resName Like '%" & tbSearch.Text.ToString() & "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub

End Class
