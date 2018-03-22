using System;
using System.Collections.Generic;
using System.Linq;
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
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            txtAns.Text = (double.Parse(txtOp1.Text) + double.Parse(txtOp2.Text)).ToString();
            opCount();
        }

        protected void btnMinus_Click(object sender, EventArgs e)
        {
            txtAns.Text = (double.Parse(txtOp1.Text) - double.Parse(txtOp2.Text)).ToString();
            opCount();
        }

        protected void btnMulti_Click(object sender, EventArgs e)
        {
            txtAns.Text = (double.Parse(txtOp1.Text) * double.Parse(txtOp2.Text)).ToString();
            opCount();
        }

        protected void btnDiv_Click(object sender, EventArgs e)
        {
            txtAns.Text = (double.Parse(txtOp1.Text) / double.Parse(txtOp2.Text)).ToString();
            opCount();
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
    }
}