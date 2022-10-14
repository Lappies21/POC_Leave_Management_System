<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="POCForm.aspx.cs" Inherits="POC_Leave_Management_System.POCForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <br />
    <form id="POCForm" runat="server">

        <br />
        <div id="header">
            <asp:Label ID="lblHeader" runat="server" Text="POC Leave Management System" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </div>
        <br />

        <div id="Firstname">
            <asp:Label ID="lblFname" runat="server" Text="FirstName"></asp:Label>
            <br />
            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="Lastname">
            <asp:Label ID="lblLname" runat="server" Text="LastName"></asp:Label>
            <br />
            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="LeaveStart">
            <asp:Label ID="Label2" runat="server" Text="Leave Start Date"></asp:Label>
            <br />
            <asp:Calendar ID="CalLStart" runat="server" BackColor="transparent" BorderColor="white" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" SelectedDate="10/14/2022 14:50:01">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#D3d3d3" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#D3d3d3" />
                <SelectedDayStyle BackColor="#333399" ForeColor="#D3d3d3" />
                <TitleStyle BackColor="transparent" BorderColor="white" BorderWidth="1px" Font-Bold="True" Font-Size="12pt" ForeColor="white" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </div>
        <br />
        <div id="LeaveEnd">
            <asp:Label ID="Label3" runat="server" Text="Leave End Date"></asp:Label>
            <br />
            <asp:Calendar ID="CalLEnd" runat="server" BackColor="transparent" BorderColor="white" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" SelectedDate="10/14/2022 14:49:55">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#D3d3d3" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#D3d3d3" />
                <SelectedDayStyle BackColor="#333399" ForeColor="#D3d3d3" />
                <TitleStyle BackColor="transparent" BorderColor="white" BorderWidth="1px" Font-Bold="True" Font-Size="12pt" ForeColor="white" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </div>
        <br />
        <div id="divType">
            <asp:Label ID="lblType" runat="server" Text="Type Of Leave"></asp:Label>
            <br />
            <asp:DropDownList ID="ddType" runat="server">
                <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>Sick Leave</asp:ListItem>
                <asp:ListItem>Casual Leave</asp:ListItem>
                <asp:ListItem>Public Holiday</asp:ListItem>
                <asp:ListItem>Religious Holiday</asp:ListItem>
                <asp:ListItem>Maternity Leave</asp:ListItem>
                <asp:ListItem>Paternity Leave</asp:ListItem>
                <asp:ListItem>Bereavement Leave</asp:ListItem>
                <asp:ListItem>Compensatory Leave</asp:ListItem>
                <asp:ListItem>Sabbatical Leave</asp:ListItem>
                <asp:ListItem>Unpaid Leave</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div id="divReason">
            <asp:Label ID="lblReason" runat="server" Text="Reason"></asp:Label>
            <br />
            <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Height="80px" Width="370px"></asp:TextBox>
        </div>
        <br />
        <div id="divMessage">
            <asp:Label ID="lblSuccessMessage" runat="server" Text="Success" ForeColor="Black"></asp:Label>
        </div>
        <br />
        <div id="divBtns">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
            <br />
            <br />
            <asp:Button ID="btnView" runat="server" Text="View" PostBackUrl="~/POCLeavePage.aspx" />
            
        </div>

    </form>
</body>
</html>
