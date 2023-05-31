<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpProducts.aspx.cs" Inherits="FarmCentral.EmpProducts" %>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="CSS/StyleSheet1.css" type="text/css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
      <link rel="icon" type="image/x-icon" href="/Images/favicon.ico">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: x-large;
            width: 316px;
            height: 260px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 100%;
        }
    </style>
</head>
    <!--Just the logo.. Don't mind this-->
	<!-- Header -->
		<div id="top" class="row">
			
			<!-- Logo -->
			<div id="logo" >
			</div>
			
			
		</div>
</div>
<body>
    <form id="form1" runat="server">
        <!--Just the logo.. Don't mind this-->
	<!-- Header -->
		<div id="top" class="row">
			
			<!-- Logo -->
			<div id="logo" >
				<a ><img src="Images/remove.png" class="auto-style2" style="border: 0px" ></a>
			</div>
			
			
		</div>
<h1 class="auto-style6">Products</h1>
                <div class="auto-style6">
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style5" OnClick="Button2_Click" Text="Search" />
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Search by Item"></asp:TextBox >
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <br />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Reset Data"  BackColor="#CCCCFF" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
                    <div class="auto-style6">
                        <table class="auto-style7">
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" ForeColor="White">
                            <Columns>
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                                <asp:BoundField DataField="ProductType" HeaderText="ProductType" SortExpression="ProductType" />
                                <asp:BoundField DataField="ProductDate" HeaderText="ProductDate" DataFormatString="{0:dd/MM/yyyy}" SortExpression="ProductDate" />
                                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                            </Columns>
                        </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        </div>
                    <div class="auto-style6">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Farmers" BackColor="#3399FF" ForeColor="White"/>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Products" BackColor="#33CC33" ForeColor="White" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Logout" BackColor="#DB2D2D" ForeColor="White" />
                    </td>
                </tr>
            </table>
        </div>
        </div>
    </form>
</body>
</html>
