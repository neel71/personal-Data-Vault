using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentationLayer.Admin
{
    public partial class Home_page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}






////<div class="auto-style2">
////        <asp:GridView ID="GridView1" runat="server"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" CssClass="table table-responsive" Font-Bold="False" GridLines="Vertical" HorizontalAlign="Center" Width="955px" OnRowCommand="GridView1_RowCommand" DataKeyNames="Userid" >
//            <Columns>
//                <asp:TemplateField HeaderText="User ID">
//                    <EditItemTemplate>
//                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Userid") %>'></asp:TextBox>
//                    </EditItemTemplate>
//                    <ItemTemplate>
//                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Userid") %>'></asp:Label>
//                    </ItemTemplate>
//                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="First Name">
//                    <EditItemTemplate>
//                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Fname") %>'></asp:TextBox>
//                    </EditItemTemplate>
//                    <ItemTemplate>
//                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Fname") %>'></asp:Label>
//                    </ItemTemplate>
//                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="Last Name">
//                    <EditItemTemplate>
//                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Lname") %>'></asp:TextBox>
//                    </EditItemTemplate>
//                    <ItemTemplate>
//                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Lname") %>'></asp:Label>
//                    </ItemTemplate>
//                    <HeaderStyle HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="Gender">
//                    <EditItemTemplate>
//                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
//                    </EditItemTemplate>
//                    <ItemTemplate>
//                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
//                    </ItemTemplate>
//                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="Date">
//                    <EditItemTemplate>
//                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
//                    </EditItemTemplate>
//                    <ItemTemplate>
//                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
//                    </ItemTemplate>
//                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="Time">
//                    <EditItemTemplate>
//                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Time") %>'></asp:TextBox>
//                    </EditItemTemplate>
//                    <ItemTemplate>
//                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Time") %>'></asp:Label>
//                    </ItemTemplate>
//                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="Admin Check">
//                    <EditItemTemplate>
//                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Admin_check") %>'></asp:TextBox>
//                    </EditItemTemplate>
//                    <ItemTemplate>
//                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Admin_check") %>'></asp:Label>
//                    </ItemTemplate>
//                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="Active">
//                    <EditItemTemplate>
//                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Active") %>'></asp:TextBox>
//                    </EditItemTemplate>
//                    <ItemTemplate>
//                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Active") %>'></asp:Label>
//                    </ItemTemplate>
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="Approval" ShowHeader="False">
//                    <ItemTemplate>
//                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Approve" CommandArgument='<%#Eval("Userid") %>' Text="Approve"></asp:LinkButton>
//                    </ItemTemplate>
//                    <HeaderStyle HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//                <asp:TemplateField HeaderText="Rejection" ShowHeader="False">
//                    <ItemTemplate>
//                        <asp:LinkButton ID="LinkButton2" runat="server"  CausesValidation="false" CommandArgument='<%#Eval("Userid") %>' CommandName="Reject" Text="Reject"></asp:LinkButton>
//                    </ItemTemplate>
//                    <HeaderStyle HorizontalAlign="Center" />
//                    <ItemStyle HorizontalAlign="Center" />
//                </asp:TemplateField>
//            </Columns>
//        <FooterStyle BackColor="White" ForeColor="#000066" />
//        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Names="Sitka Text" Font-Overline="False" HorizontalAlign="Center" />
//        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
//        <RowStyle ForeColor="#000066" />
//        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
//        <SortedAscendingCellStyle BackColor="#F1F1F1" />
//        <SortedAscendingHeaderStyle BackColor="#007DBB" />
//        <SortedDescendingCellStyle BackColor="#CAC9C9" />
//        <SortedDescendingHeaderStyle BackColor="#00547E" />
////    </asp:GridView>
         
////          </div>