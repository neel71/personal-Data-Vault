<%@ Page Title="" Language="C#" MasterPageFile="~/User/c_mail.Master" AutoEventWireup="true" CodeBehind="C_mail.aspx.cs" Inherits="PresentationLayer.User.C_mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .buttton {
        border-radius:2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <asp:Button ID="Button1" runat="server" BorderColor="#0033CC" Font-Bold="True" Font-Underline="True" style="z-index: 1; top: 258px; position: absolute; left: 564px; width: 63px" Text="Send" CssClass="buttton" OnClick="Button1_Click" />
     <asp:Label ID="Label1" runat="server" style="width: 51px; z-index: 1; left: 87px; top: 55px; position: absolute" Text="To"></asp:Label>
                             <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 87px; top: 133px; position: absolute; width: 40px" Text="Body"></asp:Label>
                             <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 86px; top: 92px; position: absolute" Text="Subject"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 188px; top: 262px; position: absolute" />
                             <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 84px; top: 262px; position: absolute; width: 97px;" Text="Attach File"></asp:Label>
                             <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 147px; top: 55px; position: absolute; width: 425px;"></asp:TextBox>
                             <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 147px; top: 93px; position: absolute; width: 426px;"></asp:TextBox>
                             <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 145px; top: 134px; position: absolute; width: 429px; height: 85px;" TextMode="MultiLine"></asp:TextBox>
</asp:Content>
