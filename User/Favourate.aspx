<%@ Page Title="" Language="C#" MasterPageFile="~/User/vault.Master" AutoEventWireup="true" CodeBehind="Favourate.aspx.cs" Inherits="PresentationLayer.User.Favourate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Name" style="z-index: 1; left: 9px; top: 2px; position: absolute; width: 59px"></asp:Label>
                    <asp:TextBox ID="Textloc" runat="server" style="z-index: 1; left: 70px; top: 4px; position: absolute; width: 130px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="Url" style="z-index: 1; left: 267px; top: 3px; position: absolute; width: 48px"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 323px; top: 3px; position: absolute; width: 160px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="ADD" BorderColor="Blue" Font-Bold="True" Font-Underline="True" style="z-index: 1; left: 546px; top: 2px; position: absolute; width: 62px; height: 21px" OnClick="Button1_Click" />
    

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" style="z-index: 1; left: 7px; top: 49px; position: absolute; height: 121px; width: 698px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand">
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


            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="URL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("url") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("url") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle Font-Underline="True" />
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="delete_data" CommandArgument='<%#Eval("Id") %>' Text="delete"></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>
        </Columns>
    </asp:GridView>    
                     
</asp:Content>
