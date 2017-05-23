﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dc_admin_admin : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["LoginKey"] != null)
            {
                String name = Request.Cookies["UserName"].Value.ToString();
                String pswd = Request.Cookies["UserPassword"].Value.ToString();
                lbl_username.Text = "你好，"+name;
                if (!RSA.CheckIfLogin(name, pswd))
                {
                    Response.Redirect("../");
                }
            }
            else
            {
                Response.Redirect("../");
            }
        }
        catch (Exception exc)
        {
            Js.Alert(exc.Message.ToString());
            Response.Redirect("../");
        }
        

    }

    //跳转到修改管理员信息
    protected void btn_modifyAdminInfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_modify_info.aspx");
    }

    //注销按钮
    protected void btn_logoff_Click(object sender, EventArgs e)
    {
        Response.Cookies["UserName"].Value = null;
        Response.Cookies["UserPassword"].Value = null;
        Response.Redirect("../Default.aspx");
    }
}
