﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xuattheonganh.aspx.cs" Inherits="TheLast.View.xuattheonganh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <center>
        <div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Chọn khoa muốn xuất "></asp:Label>
&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NganhHoc" DataValueField="NganhHoc" Width="227px">
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Xuất" />
            <br />
            <br />
        </div>
            </center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MSSV" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="MSSV" HeaderText="MSSV" ReadOnly="True" SortExpression="MSSV" />
                <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
                <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                <asp:BoundField DataField="DanToc" HeaderText="DanToc" SortExpression="DanToc" />
                <asp:BoundField DataField="TonGiao" HeaderText="TonGiao" SortExpression="TonGiao" />
                <asp:BoundField DataField="DiaChiTT" HeaderText="DiaChiTT" SortExpression="DiaChiTT" />
                <asp:BoundField DataField="Tinh" HeaderText="Tinh" SortExpression="Tinh" />
                <asp:BoundField DataField="QuanHuyen" HeaderText="QuanHuyen" SortExpression="QuanHuyen" />
                <asp:BoundField DataField="QuocGia" HeaderText="QuocGia" SortExpression="QuocGia" />
                <asp:BoundField DataField="CMND" HeaderText="CMND" SortExpression="CMND" />
                <asp:BoundField DataField="DoanDang" HeaderText="DoanDang" SortExpression="DoanDang" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:BoundField DataField="NganhHoc" HeaderText="NganhHoc" SortExpression="NganhHoc" />
                <asp:BoundField DataField="Lop" HeaderText="Lop" SortExpression="Lop" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT DISTINCT [NganhHoc] FROM [StudentInfo]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT [MSSV], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [TonGiao], [DiaChiTT], [Tinh], [QuanHuyen], [QuocGia], [CMND], [DoanDang], [SDT], [NganhHoc], [Lop] FROM [StudentInfo] WHERE ([NganhHoc] = @NganhHoc)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="NganhHoc" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Về menu" />
    </form>
    </center>
</body>
</html>
