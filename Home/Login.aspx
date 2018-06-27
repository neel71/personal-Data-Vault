<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Home_page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PresentationLayer.Home.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       #content2{
           padding-top:20px;
       }
        
        .auto-style1 {
            height: 369px;
            width: 403px;
            padding-left: 40px;
            position: absolute;
            top: 160px;
            left: 445px;
            z-index: 1;
            border-radius:10px;
            border-color:gray;
        }
        .auto-style2 {
            position: absolute;
            top: 77px;
            left: 68px;
            z-index: 1;
            width: 87px;
            height: 23px;
        }
        .auto-style3 {
            position: absolute;
            top: 114px;
            left: 67px;
            z-index: 1;
            width: 64px;
            height: 15px;
        }
        .auto-style4 {
            position: absolute;
            top: 75px;
            left: 170px;
            z-index: 1;
            width: 144px;
        }
        .auto-style5 {
            position: absolute;
            top: 113px;
            left: 170px;
            z-index: 1;
            width: 144px;
        }
        .auto-style6 {
            width: 76px;
            height: 57px;
            position: absolute;
            top: 152px;
            left: 161px;
            z-index: 1;
        }
    .auto-style7 {
        position: absolute;
        top: 229px;
        left: 165px;
        z-index: 1;
        width: 57px;
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <fieldset class="auto-style1">
                <legend style="font-family: 'Times New Roman', Times, serif; color: #0000FF; font-size: 22px;">Login In</legend>


                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Font-Bold="True" Text="Login Name"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Font-Bold="True" Text="Password"></asp:Label>
                <asp:TextBox ID="textname" runat="server" BorderColor="Blue" BorderWidth="1px" CssClass="auto-style4" Font-Bold="True" ForeColor="Red" Height="22px"></asp:TextBox>
                <asp:TextBox ID="Textpass" runat="server" BorderColor="Blue" BorderWidth="1px" CssClass="auto-style5" Font-Bold="True" ForeColor="Red" TextMode="Password" Height="22px"></asp:TextBox>
                <asp:RadioButtonList ID="rblist" runat="server" CssClass="auto-style6" Font-Bold="True" ForeColor="#0000CC">
                    <asp:ListItem Value="0">Admin</asp:ListItem>
                    <asp:ListItem Value="1">User</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Underline="True" Text ="Login" CssClass="auto-style7" ForeColor="#0000CC" OnClick="Button1_Click" />


</fieldset>
   
</asp:Content>
