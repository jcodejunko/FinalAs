<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TheLast.View.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
 
</head>
<body>
    <<div class="middle">
      <div class="menu">
        <li class="item" id='profile'>
          <a href="#profile" class="btn"><i class="far fa-user"></i>MENU Chính</a>
          
        </li>
           <li class="item" id="settings">
          <a href="#settings" class="btn"><i class="fas fa-cog"></i>Tìm kiếm sinh viên</a>
          <div class="smenu">
            <a href="TimSinhVien.aspx">Tìm theo mã số sinh viên</a>
            
          </div>
        </li>

        <li class="item" id="messages">
          <a href="#messages" class="btn"><i class="far fa-envelope"></i>Thống kê</a>
          <div class="smenu">
            <a href="Xuattheogioitinh.aspx">Theo giới tính</a>
            <a href="xuattheonganh.aspx">Theo khoa</a>
            <a href="Xuatnangcao.aspx">Nâng cao</a>
          </div>
        </li>

       

        <li class="item">
          <a class="btn" href="Login.aspx"><i class="fas fa-sign-out-alt"></i>Đăng xuất</a>
        </li>
      </div>
    </div>
</body>
</html>
