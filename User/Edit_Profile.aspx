<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home_Page.Master" AutoEventWireup="true" CodeBehind="Edit_Profile.aspx.cs" Inherits="PresentationLayer.User.Edit_Profile.Edit_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 414px;
            height: 464px;
            position: absolute;
            top: 160px;
            left: 445px;
            z-index: 1;
            border-radius:10px;
             padding-left: 40px;
             border-color:gray;
        }
        .auto-style2 {
            position: absolute;
            top: 66px;
            left: 56px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 103px;
            left: 56px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 134px;
            left: 56px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 167px;
            left: 56px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 198px;
            left: 56px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 227px;
            left: 56px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 260px;
            left: 55px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 297px;
            left: 57px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 332px;
            left: 56px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 66px;
            left: 196px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 102px;
            left: 196px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 166px;
            left: 195px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 198px;
            left: 195px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 228px;
            left: 196px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 262px;
            left: 196px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 298px;
            left: 195px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 333px;
            left: 194px;
            z-index: 1;
            width: 172px;
            height: 45px;
        }
        .auto-style23 {
            position: absolute;
            top: 405px;
            left: 114px;
            z-index: 1;
            width: 77px;
            height: 32px;
        }
        .auto-style24 {
            position: absolute;
            top: 405px;
            left: 213px;
            z-index: 1;
            width: 85px;
            height: 31px;
        }
        .auto-style26 {
            position: absolute;
            top: 35px;
            left: 519px;
            z-index: 1;
            width: 92px;
        }
        .auto-style27 {
            position: absolute;
            top: 59px;
            left: 520px;
            z-index: 1;
            width: 84px;
        }
        .auto-style28 {
            position: absolute;
            top: 36px;
            left: 470px;
            z-index: 1;
            width: 44px;
        }
        .auto-style29 {
            position: absolute;
            top: 59px;
            left: 470px;
            z-index: 1;
            width: 50px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset class="auto-style1">
                <legend  style="font-family: 'Times New Roman', Times, serif; color: #0000FF; font-size: 22px;">Edit Profile<asp:Label ID="date" runat="server" CssClass="auto-style26" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style28" Font-Bold="True" Font-Size="Medium" ForeColor="#0000CC" Text="Date :"></asp:Label>
                    <asp:Label ID="time" runat="server" CssClass="auto-style27" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style29" Font-Bold="True" Font-Size="Medium" ForeColor="Blue" Text="Time :"></asp:Label>
                </legend>


                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Font-Bold="True" Text="First Name"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Font-Bold="True" Text="Last Name"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Font-Bold="True" Text="Gender"></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Font-Bold="True" Text="Login ID"></asp:Label>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Font-Bold="True" Text="Password"></asp:Label>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Font-Bold="True" Text="Confirm Password"></asp:Label>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style8" Font-Bold="True" Text="Phone No."></asp:Label>
                <asp:Label ID="Label8" runat="server" CssClass="auto-style9" Font-Bold="True" Text="Email"></asp:Label>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style10" Font-Bold="True" Text="Address"></asp:Label>
                <asp:TextBox ID="Textfname" runat="server" CssClass="auto-style13" Font-Bold="True"></asp:TextBox>
                <asp:TextBox ID="Textlname" runat="server" CssClass="auto-style14" Font-Bold="True"></asp:TextBox>
                <asp:TextBox ID="Textloginid" runat="server" CssClass="auto-style17" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                <asp:TextBox ID="Textpass" runat="server" CssClass="auto-style18" Font-Bold="True" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="Textcpass" runat="server" CssClass="auto-style19" Font-Bold="True" TextMode="Password"></asp:TextBox>
                <asp:Label ID="label" runat="server" Font-Bold="True" style="z-index: 1; left: 368px; top: 230px; position: absolute"></asp:Label>
                <asp:TextBox ID="Textphone" runat="server" CssClass="auto-style20" Font-Bold="True"></asp:TextBox>
                <asp:TextBox ID="Textemail" runat="server" CssClass="auto-style21" Font-Bold="True" TextMode="Email"></asp:TextBox>
                <asp:TextBox ID="Textaddress" runat="server" CssClass="auto-style22" Font-Bold="True" TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="update" runat="server" BackColor="Blue" CssClass="auto-style23" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Update" OnClick="update_Click" />
                <asp:Button ID="deactive" runat="server" BackColor="Blue" CssClass="auto-style24" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Deactive" OnClick="deactive_Click" />
                <asp:TextBox ID="Textgender" runat="server" Font-Bold="True" ReadOnly="True" style="z-index: 1; left: 195px; top: 134px; position: absolute"></asp:TextBox>


</fieldset>
</asp:Content>
