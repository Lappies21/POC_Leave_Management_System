<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="POCLeavePage.aspx.cs" Inherits="POC_Leave_Management_System.POCLeavePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name = "viewport" content = "width = device-width, initial-scale = 1"/>
    <link href="css/StyleSheet.css" rel="stylesheet" media="screen and (min-width : 1224px)"/>
    <link href="css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
    <br />
    <form id="tblForm" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:POCConnectionString %>" SelectCommand="SELECT * FROM [Leave]"></asp:SqlDataSource>
        <div>
            <asp:GridView ID="gdvPOC" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="Leave_Start_Date" HeaderText="Leave Start Date" SortExpression="Leave_Start_Date" />
                    <asp:BoundField DataField="Leave_End_Date" HeaderText="Leave End Date" SortExpression="Leave_End_Date" />
                    <asp:BoundField DataField="Type_Of_Leave" HeaderText="Type of Leave" SortExpression="Type_Of_Leave" />
                    <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
                    <asp:BoundField DataField="Total_Leave" HeaderText="Total Leave" SortExpression="Total_Leave" />
                    <asp:BoundField DataField="Total_Leave_Left" HeaderText="Total Leave_Left" SortExpression="Total_Leave_Left" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <div id="divBack">
                <asp:Button ID="btnBack" runat="server" PostBackUrl="~/POCForm.aspx" Text="Back" />
            </div>
        </div>
    </form>
</body>
</html>
