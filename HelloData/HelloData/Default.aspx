<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HelloData.Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Отчет за продажбите</title>
</head>
<body>
    <form runat="server">
    <h1>Отчет за продажбите</h1>
    <div>
        <asp:Chart runat="server" DataSourceID="TotalSalesSqlDataSource">
            <Series>
                <asp:Series XValueMember="CategoryName" YValueMembers="TotalProductSales" />
            </Series>
            <ChartAreas>
                <asp:ChartArea />
            </ChartAreas>
        </asp:Chart>
        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="TotalSalesSqlDataSource" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="CategoryName" HeaderText="Категория" SortExpression="CategoryName"></asp:BoundField>
                <asp:BoundField DataField="TotalProductSales" HeaderText="Продажби" SortExpression="TotalProductSales"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="TotalSalesSqlDataSource" ConnectionString='<%$ ConnectionStrings:NortwindConnection %>' SelectCommand="SELECT * FROM [Total Sales by Category]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
