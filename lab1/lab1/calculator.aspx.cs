using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace lab1
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["OpCount"] == null)
            {
                Session["OpCount"] = 0;
            }

            lblCount.Text = Session["OpCount"].ToString();

            if (Application["HitCount"] == null)
            {
                Application["HitCount"] = 1;
            }
            else
            {
                Application["HitCount"] = (int)Application["HitCount"] + 1;
            }

            lblHit.Text = Application["HitCount"].ToString();

            if (!IsPostBack && Request.Cookies["UserName"] != null)
            {
                txtName.Text = "Welcome back " + Request.Cookies["UserName"].Value;
            }
            else
            {
                AddCookie();
            }
        }

        protected void Calculate_Command(object sender, EventArgs e)
        {
            string operation = ((ImageButton)sender).CommandName;

            switch (operation)
            {
                case "Add":
                    txtAns.Text = (double.Parse(txtOp1.Text) + double.Parse(txtOp2.Text)).ToString();
                    opCount();
                    break;
                case "Subtract":
                    txtAns.Text = (double.Parse(txtOp1.Text) - double.Parse(txtOp2.Text)).ToString();
                    opCount();
                    break;
                case "Multiply":
                    txtAns.Text = (double.Parse(txtOp1.Text) * double.Parse(txtOp2.Text)).ToString();
                    opCount();
                    break;
                case "Divide":
                    txtAns.Text = (double.Parse(txtOp1.Text) / double.Parse(txtOp2.Text)).ToString();
                    opCount();
                    break;
                default:
                    break;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtOp1.Text = "";
            txtOp2.Text = "";
            txtAns.Text = "";
            opCount();
        }

        private void opCount()
        {
            if(Session["OpCount"] == null)
            {
                Session["OpCount"] = 1;
            }
            else
            {
                Session["OpCount"] = (int)Session["OpCount"] + 1;
            }

            lblCount.Text = Session["OpCount"].ToString();
        }

        private void AddCookie()
        {
            if (txtName.Text == "") txtName.Text = "Stranger";
            HttpCookie userCookie = new HttpCookie("UserName", txtName.Text);
            userCookie.Expires = DateTime.Now.AddMonths(1);
            Response.Cookies.Add(userCookie);
        }
    }
}