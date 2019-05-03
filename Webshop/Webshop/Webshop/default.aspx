<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Webshop._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><em><strong>Online GPU-shop</strong></em></span> - <em><strong>Catalogus<br />
            <br />
            <asp:GridView ID="gvProducten" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gvProducten_SelectedIndexChanged" Width="100%">
                <Columns>
                    <asp:BoundField DataField="ArtNr" HeaderText="ArtNr">
                    <ItemStyle Width="75px" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto">
                        <ControlStyle Width="150px" />
                        <ItemStyle Width="175px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Naam" HeaderText="Naam">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Prijs" DataFormatString="{0:C}" HeaderText="Prijs">
                    <ItemStyle Width="85px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Voorraad" HeaderText="Voorraad" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:CommandField SelectText="Voeg toe aan winkelmandje" ShowSelectButton="True" >
                    <ItemStyle Width="175px" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="btnWinkelmandje" runat="server" OnClick="btnWinkelmandje_Click" Text="Bekijk de inhoud van het winkelmandje..." Width="100%" />
            <br />
            </strong></em>
        </div>
    </form>
</body>
</html>
