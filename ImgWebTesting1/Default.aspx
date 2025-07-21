<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ImgWebTesting1._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <% for (int i = 0; i < 20; i++) { %>
            <div class="col-md-3" style="margin-bottom: 20px;">
                <asp:Image runat="server" ID="Image1" AlternateText="image" ImageUrl="~/Images/image001.webp" Style="float: left;" Height="64px" />
            </div>
        <% } %>
    </div>

    <div class="row">
        <% for (int i = 0; i < 20; i++) { %>
            <div class="col-md-3" style="margin-bottom: 20px;">
                <asp:Image runat="server" ID="Image2" AlternateText="image" ImageUrl="~/Images/images.webp" Style="float: left;" Height="64px" />
            </div>
        <% } %>
    </div>


    <script type="text/javascript">
        const pageStart = performance.timing.navigationStart;

        window.onload = function () {
            const pageEnd = performance.now();
            const fullPageLoadTime = pageEnd;

            const images = document.querySelectorAll("img");
            const imageStart = performance.now();
            let loadedCount = 0;

            images.forEach(function (img) {
                if (img.complete) {
                    loadedCount++;
                    if (loadedCount === images.length) {
                        const imageEnd = performance.now();
                        showResults(imageEnd - imageStart, fullPageLoadTime);
                    }
                } else {
                    img.onload = function () {
                        loadedCount++;
                        if (loadedCount === images.length) {
                            const imageEnd = performance.now();
                            showResults(imageEnd - imageStart, fullPageLoadTime);
                        }
                    };
                }
            });

            function showResults(imageTime, pageTime) {
                const message =
                    "🖼️ Image load time: " + imageTime.toFixed(12) + " ms\n" +
                    "🌐 Full page load time: " + pageTime.toFixed(12) + " ms";

                // Log to console
                console.log(message);

                // Show in alert (selectable) ?
                const textArea = document.createElement("textarea");
                textArea.value = message;
                document.body.appendChild(textArea);
                textArea.select();
                alert(message);
                document.body.removeChild(textArea);
            }
        };
    </script>


</asp:Content>



