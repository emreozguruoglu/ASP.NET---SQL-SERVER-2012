<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="VERITABANI.SAYFALAR.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="606px">
            Kullanıcı ID :&nbsp;
            <asp:TextBox ID="txtKullaniciId" runat="server"></asp:TextBox>
            <br />
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
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btnServerKaydet" runat="server" Height="25px" OnClick="btnServerKaydet_Click" Text="Server Kaydet" Width="100px" />
            &nbsp;&nbsp;
            <asp:Button ID="btnDbKaydet" runat="server" OnClick="btnDbKaydet_Click" Text="DB KAYDET" Height="27px" />
&nbsp;
            <br />
            <br />
            &nbsp;AD SOYAD :&nbsp;<asp:Label ID="lbKullaniciAd" runat="server"></asp:Label>
            &nbsp;
            <asp:Label ID="lbKullaniciSoyad" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="btnSonucGoster" runat="server" OnClick="btnSonucGoster_Click" Text="Sonuc Göster" />
            <br />
            <br />
            <br />
            SORGU (ID)&nbsp; :
            <asp:TextBox ID="txtDbSorgu" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDbSil" runat="server" OnClick="btnDbSil_Click" Text="DB SIL" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDbGuncelle" runat="server" OnClick="btnDbGuncelle_Click" Text="DB GUNCELLE" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
