<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proj.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#txtDate").datepicker();
            $("#anim").on("change", function () {
                $("#txtDate").datepicker("option", "showAnim", $(this).val());
    });
  } );
  </script>
    <style type="text/css">
        .auto-style1 {
            width: 86%;
            height: 149px;
            margin-top: 64px;
        }
        .auto-style2 {
            text-align: left;
            height: 50px;
            width: 1402px;
        }
        .auto-style4 {
            width: 465px;
            height: 68px;
        }
        .auto-style7 {
            margin-left: 20px;
        }
        .auto-style8 {
            text-align: right;
            width: 465px;
            height: 50px;
        }
        .auto-style9 {
            height: 50px;
            width: 1402px;
        }
        .auto-style11 {
            margin-left: 101px;
        }
        .auto-style12 {
            font-size: x-small;
        }
        .auto-style13 {
            height: 68px;
            width: 1402px;
        }
        .auto-style14 {
            width: 1448px;
            height: 536px;
        }
    </style>
</head>
<body style="margin-bottom: 247px">
    <form id="form1" runat="server" class="auto-style14">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">Your Name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtName" runat="server" BorderColor="#999999" BorderStyle="Solid" CssClass="auto-style7" Width="550px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Favorite Color:</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="favClr" runat="server" CssClass="auto-style7" Width="550px">
                        <asp:ListItem Value="-1">Select Color</asp:ListItem>
                        <asp:ListItem Value="1">Red</asp:ListItem>
                        <asp:ListItem Value="2">Green</asp:ListItem>
                        <asp:ListItem Value="3">Blue</asp:ListItem>
                        <asp:ListItem Value="4">Yellow</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorFavClr" runat="server" ControlToValidate="favClr" InitialValue="-1" CssClass="auto-style12" Display="Dynamic" ErrorMessage="Select: Red, Green,Blue, Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Expiration Date:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDate" runat="server" BorderColor="#999999" BorderStyle="Solid" CssClass="auto-style7" Width="550px" TextMode="DateTime"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Save" Width="150px" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#009933"></asp:Label>
    </form>
</body>
</html>
