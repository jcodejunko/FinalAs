<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimSinhVien.aspx.cs" Inherits="TheLast.View.TimSinhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            align-content:safe center;
        }
        .auto-style2 {
            width: 209px;
        }
        .auto-style3 {
            width: 281px;
        }
        .auto-style4 {
            width: 117px;
        }
        .auto-style5 {
            width: 209px;
            height: 23px;
        }
        .auto-style6 {
            width: 281px;
            height: 23px;
        }
        .auto-style7 {
            width: 117px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .Container{

        }
        </style>
</head>
<body>
    <center>
   <div id="Container">
    <div id="form1" runat="server">
        <center>
            <form id="SearchID" runat="server">
                <br />
                <br />
                <br />
        Nhập mã số sinh viên:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tìm" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />

                <br />
                <br />
                </center>
      
       
        <div id="IStu" runat="server" >
          
        <table class="auto-style1" margin-left="auto" margin-right="auto" border="0.3" style="table-layout: auto; border-spacing: 1px; empty-cells: hide">
            <tr>
                <td class="auto-style5" style="empty-cells: hide; table-layout: auto">MSSV</td>
                <td class="auto-style6" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style7" style="empty-cells: hide; table-layout: auto">Họ Và Tên</td>
                <td class="auto-style8" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Ngày Sinh</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">Nơi Sinh</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Giới Tính</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">Dân Tộc</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Tôn Giáo</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">Địa Chỉ Thườn Trú</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Quận/Huyện</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">Tỉnh</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Quốc gia</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">&nbsp;</td>
                <td style="empty-cells: hide; table-layout: auto">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">CMND</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">Ngày Cấp</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Đoàn/ Đảng</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">SDT</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Email</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">&nbsp;</td>
                <td style="empty-cells: hide; table-layout: auto">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Tên Cha</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">Nghề Nghiệp</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Tên Mẹ</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">Nghề Nghiệp</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="empty-cells: hide; table-layout: auto">Khoá Học</td>
                <td class="auto-style3" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4" style="empty-cells: hide; table-layout: auto">Ngành Học</td>
                <td style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="empty-cells: hide; table-layout: auto">Lớp</td>
                <td class="auto-style6" style="empty-cells: hide; table-layout: auto">
                    <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style7" style="empty-cells: hide; table-layout: auto"></td>
                <td class="auto-style8" style="empty-cells: hide; table-layout: auto"></td>
            </tr>
            </table>
               
           </div>
   <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Về menu" />
         </form>
    </div>
        
       </div>
  </center>
</body>
</html>
