<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ImgWebTesting1._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <% for (int i = 0; i < 20; i++) { %>
            <div class="col-md-3" style="margin-bottom: 20px;">
                <asp:Image runat="server" ID="Image1" AlternateText="image" ImageUrl="~/Images/image001.png" Style="float: left;" Height="64px" />
            </div>
        <% } %>
    </div>

    <div class="row">
        <% for (int i = 0; i < 20; i++) { %>
            <div class="col-md-3" style="margin-bottom: 20px;">
                <asp:Image runat="server" ID="Image2" AlternateText="image" ImageUrl="~/Images/images.png" Style="float: left;" Height="64px" />
            </div>
        <% } %>
    </div>


    <script type="text/javascript">
    window.onload = function () {
        const startTime = performance.now();
        const images = document.querySelectorAll("img");
        let loadedCount = 0;

        images.forEach(function (img) {
            if (img.complete) {
                loadedCount++;
                if (loadedCount === images.length) {
                    const endTime = performance.now();
                    alert("All images loaded in " + (endTime - startTime).toFixed(10) + " ms");
                }
            } else {
                img.onload = function () {
                    loadedCount++;
                    if (loadedCount === images.length) {
                        const endTime = performance.now();
                        alert("All images loaded in " + (endTime - startTime).toFixed(10) + " ms");
                    }
                };
            }
        });
    };
    </script>

</asp:Content>



