<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xuattheogioitinh.aspx.cs" Inherits="TheLast.View.Xuattheogioitinh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body><center>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Chọn giới tính :"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="GioiTinh" DataValueField="GioiTinh">
        </asp:DropDownList>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Xuất" />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MSSV" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
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
                <asp:BoundField DataField="CMND" HeaderText="CMND" SortExpression="CMND" />
                <asp:BoundField DataField="DoanDang" HeaderText="DoanDang" SortExpression="DoanDang" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="KhoaHoc" HeaderText="KhoaHoc" SortExpression="KhoaHoc" />
                <asp:BoundField DataField="NganhHoc" HeaderText="NganhHoc" SortExpression="NganhHoc" />
                <asp:BoundField DataField="Lop" HeaderText="Lop" SortExpression="Lop" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT DISTINCT [GioiTinh] FROM [StudentInfo]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT [MSSV], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [TonGiao], [DiaChiTT], [Tinh], [QuanHuyen], [CMND], [DoanDang], [SDT], [Email], [KhoaHoc], [NganhHoc], [Lop] FROM [StudentInfo] WHERE ([GioiTinh] = @GioiTinh)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="GioiTinh" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Về menu" />
    </form></center>
</body>
</html>
