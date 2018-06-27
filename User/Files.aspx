<%@ Page Title="" Language="C#" MasterPageFile="~/User/vault.Master" AutoEventWireup="true" CodeBehind="Files.aspx.cs" Inherits="PresentationLayer.User.Files" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 6px; top: 13px; position: absolute" />
    <asp:Button ID="Upload" runat="server" BorderColor="Blue" BorderWidth="1px" style="z-index: 1; left: 313px; top: 14px; position: absolute; width: 71px; " Text="Upload" OnClick="Upload_Click" />
   
    <asp:Label ID="empty_gd" runat="server" BackColor="Silver" Font-Bold="True" ForeColor="#000099" style="z-index: 1; left: 8px; top: 42px; position: absolute; width: 690px" Text="Empty" Visible="False"></asp:Label><div class="gdview">
   
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" style="z-index: 1; left: 6px; top: 73px; position: absolute; height: 121px; width: 699px" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCommand="GridView1_RowCommand">

        <Columns>
             <asp:TemplateField HeaderText="ID" visible="false">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>



             <asp:TemplateField HeaderText="File Name">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("file_name") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("file_name") %>'></asp:Label>
                 </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="File">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("content") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton2" OnClick="opendoc" runat="server" Text='<%# Eval("file_name") %>'></asp:LinkButton>
                 </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Upload Date">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                 </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server"  CausesValidation="false" CommandName="delete_data" CommandArgument='<%#Eval("Id") %>' Text="delete"></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>


        </Columns>


    </asp:GridView>




</asp:Content>
