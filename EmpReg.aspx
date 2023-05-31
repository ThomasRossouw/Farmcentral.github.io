<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpReg.aspx.cs" Inherits="FarmCentral.EmpReg" %>
  <link rel='icon' href='favicon.ico' type='image/x-icon'>
       <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="CSS/Emp.css" type="text/css" rel="stylesheet" />
<!DOCTYPE html>

<html >
<head runat="server">
    <title>Register</title>
    <link rel="icon" type="image/x-icon" href="/Images/favicon.ico">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            height: 29px;
            text-align: center;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            font-size: x-large;
            width: 316px;
            height: 260px;
        }
        .auto-style7 {
            text-align: center;
            height: 147px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
             <!--Just the logo.. Don't mind this-->
	<!-- Header -->
		<div id="top" class="row">
			
			<!-- Logo -->
			<div id="logo" >
				<a ><img src="Images/remove.png" class="auto-style6" style="border: 0px" ></a></div>
			
			</div>
		
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Farmer Registry</strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">UserId :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">User Name :
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">Password :&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#66FFFF" style="height: 29px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserId], [UserName], [Password], [UserType] FROM [Users]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="White">
                        <Columns>
                            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                        </Columns>
                    </asp:GridView>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="." ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Farmers" BackColor="#3399FF" ForeColor="White" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Products" BackColor="#33CC33" ForeColor="White" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Logout" BackColor="#DB2D2D" ForeColor="White" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <div class="auto-style5">
        </div>
    </form>
</body>
</html>
