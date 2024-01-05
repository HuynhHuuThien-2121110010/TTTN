using MyClass.DAO;
using MyClass.Models;
using Sport.Libary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Backend_App.Controllers
{
    public class DangNhapController : Controller
    {
        // GET: DangNhap
        UserDAO userDAO = new UserDAO();
        public ActionResult DangNhap()
        {
            return View();
        }
        public ActionResult Login(FormCollection filed)
        {
            String username = filed["username"];
            String password = XString.ToMD5(filed["password"]);
            User row_user = userDAO.getRow(username, 0);
            String strError = "";
            if (row_user == null)
            {
                strError = "Tên đăng nhập không đúng";
            }
            else
            {
                if (password.Equals(row_user.Password))
                {
                    Session["UserCustomer"] = username;
                    Session["CustomerId"] = row_user.Id;
                    return RedirectToAction("DangNhap", "DangNhap");
                }
                else
                {
                    strError = password;
                }
            }
            ViewBag.Error = "<span class='text-danger'>" + strError + "</div>";
            return RedirectToAction("Index", "Admin");

        }
        public ActionResult DangKy()
        {
            return View();
        }
    }
}