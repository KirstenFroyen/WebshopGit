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
            <asp:GridView ID="gvProducten" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gvProducten_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ArtNr" HeaderText="ArtNr">
                    <ItemStyle Width="75px" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto">
                        <ControlStyle Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Naam" HeaderText="Naam">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Prijs" DataFormatString="{0:c}" HeaderText="Prijs">
                    <ItemStyle Width="85px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Voorraad" HeaderText="Voorraad" />
                    <asp:CommandField SelectText="Voeg toe aan winkelmandje" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            </strong></em>
        </div>
    </form>
</body>
</html>
