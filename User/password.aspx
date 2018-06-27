<%@ Page Title="" Language="C#" MasterPageFile="~/User/vault.Master" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="PresentationLayer.User.password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Name" style="z-index: 1; left: 19px; top: 9px; position: absolute"></asp:Label>
    <asp:TextBox ID="tname" runat="server" style="z-index: 1; left: 79px; top: 8px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Mail" style="z-index: 1; left: 302px; top: 9px; position: absolute"></asp:Label>
    <asp:TextBox ID="turl" runat="server" style="z-index: 1; left: 371px; top: 10px; position: absolute; width: 193px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Password" style="z-index: 1; left: 301px; top: 39px; position: absolute"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 372px; top: 38px; position: absolute; width: 189px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Add" BorderColor="Blue" BorderWidth="2px" style="z-index: 1; left: 593px; top: 19px; position: absolute; width: 72px; height: 22px" OnClick="Button1_Click" />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" style="z-index: 1; left: 6px; top: 94px; position: absolute; height: 121px; width: 695px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand">

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

            <asp:TemplateField HeaderText="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("pass") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("pass") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
                
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
