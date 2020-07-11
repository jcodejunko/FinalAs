<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xuattheolop.aspx.cs" Inherits="TheLast.View.Xuattheolop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Chọn lớp :    "></asp:Label>
&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Lop" DataValueField="Lop" Width="148px">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Xuất" />
        </div>
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
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="KhoaHoc" HeaderText="KhoaHoc" SortExpression="KhoaHoc" />
                <asp:BoundField DataField="NganhHoc" HeaderText="NganhHoc" SortExpression="NganhHoc" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT DISTINCT [Lop] FROM [StudentInfo]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT [MSSV], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [DanToc], [TonGiao], [DiaChiTT], [Tinh], [QuanHuyen], [QuocGia], [CMND], [DoanDang], [SDT], [Email], [KhoaHoc], [NganhHoc] FROM [StudentInfo] WHERE ([Lop] = @Lop)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Lop" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Về menu" />
    </form>
</body>
</html>
