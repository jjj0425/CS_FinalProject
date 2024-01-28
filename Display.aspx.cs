using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                string username = User.Identity.Name; // 取得當前登入的使用者名稱
                lblOut.Text = "您好，" + username;               // 使用 username 進行後續操作
            }           
        }

        protected void SignOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut(); // 清除身份驗證
            Response.Redirect("Default.aspx"); // 重定向到登入頁面或其他需要的頁面
        }
    }
}