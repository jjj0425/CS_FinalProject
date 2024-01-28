using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (var dbContext = new Model1())
            {
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text;
                string confirmPassword = txtConfirmPassword.Text;

                // 檢查使用者輸入的密碼和確認密碼是否一致
                if (password == confirmPassword)
                {
                    if (dbContext.Users.Any(u => u.UserName == username))
                    {
                        // 提示使用者名稱已存在，請使用其他名稱
                        lblRegisterError.Text = "註冊失敗，使用者已存在。";
                        return;
                    }

                    // 儲存使用者資料到資料庫
                    dbContext.Users.Add(new Users { UserName = username, Password = password });
                    dbContext.SaveChanges();

                    // 提示註冊成功並導向其他頁面
                    Response.Write("註冊成功！");

                    Response.Redirect("Default.aspx");
                }
                else
                {
                    // 密碼不一致，顯示錯誤訊息
                    lblRegisterError.Text = "註冊失敗，密碼不一致";
                }
            }
        }
    }
}