using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (var dbContext = new Model1())
            {
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text;

                // 在資料庫中檢查使用者名稱和密碼是否匹配
                var user = dbContext.Users.FirstOrDefault(u => u.UserName == username && u.Password == password);

                if (user != null)
                {
                    string sUser = username;
                    FormsAuthentication.SetAuthCookie(sUser, false);
                    // 登入成功，執行登入後的操作，例如導向到其他頁面
                    Response.Redirect("Display.aspx");
                }
                else
                {
                    // 登入失敗，顯示錯誤訊息
                    lblLoginError.Text = "登入失敗，使用者名稱或密碼錯誤。";
                }
            }
        }

        protected void btnToRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}