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
            border: 1px solid blue;
            width: 100%;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><em><strong>Online GPU-shop</strong></em></span> - <strong><em>Winkelmandje<br />
            <br />
            </em>
            </strong>
        </div>
        <div>
            <strong>
            <table class="auto-style2">
                <tr>
                    <td>Klantnummer:</td>
                    <td>
                        <asp:Label ID="lblKlantNr" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Naam:</td>
                    <td>
                        <asp:Label ID="lblNaam" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Adres:</td>
                    <td>
                        <asp:Label ID="lblAdres" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="lblPC" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblGemeente" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Besteldatum:</td>
                    <td>
                        <asp:Label ID="lblDatum" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            </strong>
        </div>
        <br />
        <asp:GridView ID="gvMandje" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gvMandje_SelectedIndexChanged" Width="80%">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Images/deleteknop.png" ShowSelectButton="True" />
                <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto">
                    <ControlStyle Width="150px" />
                    <ItemStyle Width="150px" />
                </asp:ImageField>
                <asp:BoundField DataField="ArtNr" HeaderText="ArtNr">
                <ItemStyle Width="75px" />
                </asp:BoundField>
                <asp:BoundField DataField="Naam" HeaderText="Naam">
                <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="Aantal" HeaderText="Aantal" />
                <asp:BoundField DataField="Prijs" DataFormatString="{0:C}" HeaderText="Prijs">
                <ItemStyle Width="80px" />
                </asp:BoundField>
                <asp:BoundField DataField="Totaal" DataFormatString="{0:C}" HeaderText="Totaal">
                <ItemStyle Width="85px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <table class="auto-style3">
            <tr>
                        <td class="auto-style4" >Totaal excl. BTW:</td>
                        <td class="auto-style4" >
                            <asp:Label ID="lblTotExBtw" runat="server"></asp:Label>
                        </td>
            </tr>
            <tr>
                        <td>BTW:</td>
                        <td>
                            <asp:Label ID="lblBtw" runat="server"></asp:Label>
                        </td>
            </tr>
            <tr>
                        <td >Totaal incl. BTW:</td>
                        <td >
                            <asp:Label ID="lblTotIncBtw" runat="server"></asp:Label>
                        </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Button ID="btnBestellen" runat="server" OnClick="btnBestellen_Click" Text="Plaats bestelling ..." Width="80%" />
        <br />
        <br />
        <asp:DynamicHyperLink ID="dhlNaarCatalogus" runat="server" NavigateUrl="~/default.aspx">Terug naar catalogus ...</asp:DynamicHyperLink>
        <br />
    </form>
    <br />
    <br />
  

</body>
</html>
