<%@ Page Title="" Language="C#" MasterPageFile="~/User/O_mail.Master" AutoEventWireup="true" CodeBehind="o_mail.aspx.cs" Inherits="PresentationLayer.User.o_mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gdview {
        overflow-y:scroll;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="Button1" runat="server" BorderColor="#000099" style="z-index: 1; left: 24px; top: 34px; position: absolute; width: 63px; height: 22px; margin-bottom: 0" Text="Delete" OnClick="Button1_Click" />
     
    <asp:Label ID="empty_gd" runat="server" BackColor="Silver" Font-Bold="True" ForeColor="#000099" style="z-index: 1; left: 110px; top: 38px; position: absolute; width: 537px" Text="Empty" Visible="False"></asp:Label><div class="gdview">
   
         <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" style="z-index: 1; left: 24px; top: 78px; position: absolute; height: 121px; width: 637px" Width="100%" DataKeyNames="Id" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="All">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="ID" Visible="false">
                 <ItemTemplate>
                     <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>'> </asp:Label>
                 </ItemTemplate>
                  <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
            <asp:TemplateField HeaderText="Receivers">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("to_msg") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("to_msg") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Subject">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("subject") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("body") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("body") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="File">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("file_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="opendoc" Text='<%# Eval("file_name") %>'></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
         
</asp:Content>
