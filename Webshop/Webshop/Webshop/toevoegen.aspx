<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toevoegen.aspx.cs" Inherits="Webshop.toevoegen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: large;
            text-decoration: underline;
        }
        .auto-style2 {
            border: 1px solid blue;
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><em><strong>Online GPU-shop</strong></em></span> - <em><strong>Artikel&nbsp; aan mandje toevoegen<br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td rowspan="4">
                        <asp:Image ID="imgFoto" runat="server" Width="175px" />
                    </td>
                    <td class="auto-style3">ArtNr:</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblArtNr" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Naam:</td>
                    <td>
                        <asp:Label ID="lblNaam" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Prijs:</td>
                    <td>
                        <asp:Label ID="lblPrijs" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Voorraad:</td>
                    <td>
                        <asp:Label ID="lblVoorraad" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblWaarschuwing" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            Aantal te bestellen exemplaren van dit item : <asp:TextBox ID="txtbAantal" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnToevoegenAanMand" runat="server" OnClick="btnToevoegenAanMand_Click" Text="Voeg toe aan mandje..." />
            <br />
            </strong></em>
        </div>
    </form>
</body>
</html>
