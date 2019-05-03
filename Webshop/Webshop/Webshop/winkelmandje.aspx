<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="winkelmandje.aspx.cs" Inherits="Webshop.winkelmandje" %>

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
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><em><strong>Online GPU-shop</strong></em></span> - <strong><em>Winkelmandje<br />
            <br />
            </em>
            <table class="auto-style2">
                <tr>
                    <td>Klantnummer:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Naam:</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Adres:</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Besteldatum:</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            </strong>
        </div>
    </form>
</body>
</html>
