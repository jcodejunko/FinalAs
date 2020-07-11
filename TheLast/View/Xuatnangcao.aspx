<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xuatnangcao.aspx.cs" Inherits="TheLast.View.Xuatnangcao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body> <center>
    <form id="form1" runat="server" >
       
        <div id="Seeee"><center>
            <table class="auto-style1">
               
                <tr>
                    <td>
                        
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Giới tính : "></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="GioiTinh" DataValueField="GioiTinh">
                        </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Tôn giáo :"></asp:Label>
                        &nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TonGiao" DataValueField="TonGiao">
                        </asp:DropDownList>
                        &nbsp;<asp:Label ID="Label3" runat="server" Text="Tỉnh thành  : "></asp:Label>
                        &nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Tinh" DataValueField="Tinh">
                        </asp:DropDownList>
                        &nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Ngành : "></asp:Label>
                        &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="NganhHoc" DataValueField="NganhHoc">
                        </asp:DropDownList>
                        &nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Xuất" />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table></center>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MSSV" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="MSSV" HeaderText="MSSV" ReadOnly="True" SortExpression="MSSV" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" SortExpression="NgaySinh" />
                <asp:BoundField DataField="NoiSinh" HeaderText="Nơi Sinh" SortExpression="NoiSinh" />
                <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
                <asp:BoundField DataField="TonGiao" HeaderText="Tôn Giáo" SortExpression="TonGiao" />
                <asp:BoundField DataField="DanToc" HeaderText="Dân Tộc" SortExpression="DanToc" />
                <asp:BoundField DataField="DiaChiTT" HeaderText="Địa chỉ thường trú" SortExpression="DiaChiTT" />
                <asp:BoundField DataField="Tinh" HeaderText="Tỉnh" SortExpression="Tinh" />
                <asp:BoundField DataField="QuanHuyen" HeaderText="Quận/Huyện" SortExpression="QuanHuyen" />
                <asp:BoundField DataField="QuocGia" HeaderText="Quốc Gia" SortExpression="QuocGia" />
                <asp:BoundField DataField="CMND" HeaderText="CMND" SortExpression="CMND" />
                <asp:BoundField DataField="DoanDang" HeaderText="Đoàn/Đảng" SortExpression="DoanDang" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:BoundField DataField="KhoaHoc" HeaderText="Khoá học" SortExpression="KhoaHoc" />
                <asp:BoundField DataField="NganhHoc" HeaderText="Ngành học" SortExpression="NganhHoc" />
                <asp:BoundField DataField="Lop" HeaderText="Lớp" SortExpression="Lop" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT DISTINCT [GioiTinh] FROM [StudentInfo]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT DISTINCT [TonGiao] FROM [StudentInfo]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT DISTINCT [Tinh] FROM [StudentInfo]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT DISTINCT [NganhHoc] FROM [StudentInfo]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:StInfoConnectionString %>" SelectCommand="SELECT [MSSV], [HoTen], [NgaySinh], [NoiSinh], [GioiTinh], [TonGiao], [DanToc], [DiaChiTT], [Tinh], [QuanHuyen], [QuocGia], [CMND], [DoanDang], [SDT], [KhoaHoc], [NganhHoc], [Lop] FROM [StudentInfo] WHERE (([GioiTinh] = @GioiTinh) AND ([TonGiao] = @TonGiao) AND ([Tinh] = @Tinh) AND ([NganhHoc] = @NganhHoc))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="GioiTinh" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="TonGiao" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList3" Name="Tinh" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList4" Name="NganhHoc" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Về Menu" />
        <br />
            
    </form>
    </center>
</body>
</html>
