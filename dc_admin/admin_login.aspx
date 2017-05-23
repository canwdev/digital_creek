﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="dc_admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/docs.css" rel="stylesheet" />
    <title>登陆</title>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default navbar-static-top">
                <div class="container">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="../"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>DigitalCreek</a>
                    </div>
                </div>
    </nav>

    <div class="container" style="max-width:400px;">
        <div class="bs-example bs-example-form">
            <center><h4><b>登录</b></h4></center>

                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
                        <asp:TextBox ID="txt_username" runat="server" placeholder="用户名" 
                            class="form-control" ControlToValidate="txt_username"></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
                        <asp:TextBox ID="txt_password" runat="server" class="form-control" placeholder="密码" 
                            TextMode="Password"></asp:TextBox>
                    </div>

                <div style="text-align: right;">
                    <div style="float:left;">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        DisplayMode="List" ForeColor="#FF0066"/>
                        <asp:Label ID="lbl_err" runat="server" ForeColor="#FF0066"></asp:Label>
                    </div>
                    

                    <asp:Button ID="btn_login" runat="server" Text="登陆" class="btn" 
                        onclick="btn_login_Click"/>

                </div>
            </div>
    </div
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空" ControlToValidate="txt_username" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="密码不能为空" ControlToValidate="txt_password" Display="None" 
        ForeColor="#FF0066"></asp:RequiredFieldValidator>
    </form>
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
