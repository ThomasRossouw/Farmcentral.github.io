<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FarmCentral.Home" %>
    <link rel='icon' href='favicon.ico' type='image/x-icon'>
       <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="CSS/StyleSheet.css" type="text/css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Farmer Info</title>
    <link rel="icon" type="image/x-icon" href="/Images/favicon.ico">
  
    <style type="text/css">
        .auto-style11 {
            font-size: xx-large;
            text-align: center;
            width: 314px;
            height: 260px;
        }
        .auto-style13 {
            width: 423px;
            text-align: center;
        }
        .auto-style16 {
            margin-top: 0px;
        }
        .auto-style17 {
            height: 29px;
            text-align: left;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style19 {
            height: 168px;
            width: 265px;
            text-align: center;
        }
        .auto-style21 {
            height: 26px;
            width: 423px;
        }
        .auto-style22 {
            height: 29px;
            width: 423px;
        }
        .auto-style23 {
            width: 423px;
        }
        .auto-style24 {
            height: 29px;
            width: 423px;
            text-align: right;
        }
        .auto-style25 {
            width: 423px;
            text-align: right;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
             <!--Just the logo.. Don't mind this-->
	<!-- Header -->
		<div id="top" class="row">
			
			<!-- Logo -->
			<div id="logo" class="auto-style19" >
				<a ><img src="Images/remove.png" class="auto-style11" style="border: 0px" ></a>
        </div>
			<h1 class="auto-style10">Farmer Info</h1>
			
		</div>
        <div>
            <table class="auto-style1">
                
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style5">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Product Name" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:Label ID="Label2" runat="server" Text="Product Type" ></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter the Type of Product" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label3" runat="server" Text="Product Date"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="MM-DD-YYYY" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1"   runat="server" OnClick="Button1_Click"   Text="Insert" BackColor="#66FFFF" />
                   
                        </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductName], [ProductType], [ProductDate], [ProductId] FROM [Products]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="469px" CssClass="auto-style16" DataKeyNames="ProductId" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                                <asp:BoundField DataField="ProductType" HeaderText="Product Type" SortExpression="ProductType" />
                                <asp:BoundField DataField="ProductDate" HeaderText="Product Date" DataFormatString="{0:dd/MM/yyyy}" SortExpression="ProductDate" />
                                <asp:BoundField DataField="ProductId" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" BackColor="Red" ForeColor="White" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
