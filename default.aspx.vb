
Partial Class _default
    Inherits System.Web.UI.Page

    'Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
    '    'Protected Sub tbSearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tbSearch.TextChanged

    '    Dim searchWord As String
    '    searchWord = "Select * From Burger where (resName Like '%" + tbSearch.Text.ToString() + "%')"
    '    SqlDataSource1.SelectCommand = searchWord

    'End Sub

    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
        Dim searchWord As String
        searchWord = "Select * From Burger where (resName Like '%" + tbSearch.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub

End Class
