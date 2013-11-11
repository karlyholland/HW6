
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblCopy.Text = DateTime.Now.Year

    End Sub

    'Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

    '    Response.Redirect("./default.aspx")

    'End Sub
    'Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

    '    Response.Redirect("./default.aspx")

    'End Sub

End Class
