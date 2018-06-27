<%@ Page Title="" Language="C#" MasterPageFile="~/User/i_mail.Master" AutoEventWireup="true" CodeBehind="i_mail.aspx.cs" Inherits="PresentationLayer.User.i_mail1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
  

    <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 20px; top: 71px; position: absolute; height: 121px; width: 646px" AutoGenerateColumns="False" DataKeyNames="Id" HorizontalAlign="Left" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
         <Columns>
             <asp:TemplateField>
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

             <asp:TemplateField HeaderText="Sender ID">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("from_msg") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("from_msg") %>'></asp:Label>
                 </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Subject">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("subject") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                 </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Body">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("body") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("body") %>'></asp:Label>
                 </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Date">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                 </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="File">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton4" runat="server" OnClick="opendoc" Text='<%# Eval("file_name") %>'></asp:LinkButton>
                 </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
         </Columns>
     </asp:GridView> 
     <asp:Label ID="empty_gd" runat="server" BackColor="Silver" Font-Bold="True" ForeColor="#000099" style="z-index: 1; left: 110px; top: 38px; position: absolute; width: 537px" Text="Empty" Visible="False"></asp:Label>
     <asp:Button ID="Button1" runat="server" BorderColor="#000099" style="z-index: 1; left: 24px; top: 34px; position: absolute; width: 63px; height: 22px; margin-bottom: 0" Width="100%" Text="Delete" OnClick="Button1_Click" />
</asp:Content>
