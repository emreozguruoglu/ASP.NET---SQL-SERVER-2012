<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DbGuncelle.aspx.cs" Inherits="VERITABANI.SAYFALAR.DbGuncelle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 454px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
            <br />
            Adı :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
            <br />
            <br />
            Soyadı :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtKullaniciSoyadi" runat="server"></asp:TextBox>
            <br />
            <br />
            Parola :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtKullaniciPwd" runat="server"></asp:TextBox>
            <br />
            <br />
            Yaşı :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtKullaniciYas" runat="server"></asp:TextBox>
            <br />
            <br />
            Doğum Yeri :
            <asp:TextBox ID="txtKullaniciDogumYeri" runat="server"></asp:TextBox>
            <br />
            <br />
            Telefon :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtKullaniciTel" runat="server"></asp:TextBox>
            <br />
            <br />
            E-Mail :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtKullaniciEmail" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDbGuncelleAspx" runat="server" OnClick="btnDbGuncelleAspx_Click" Text="Güncelle" />
&nbsp;&nbsp;
        <asp:Button ID="btnGeri" runat="server" OnClick="btnGeri_Click" Text="Geri" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
