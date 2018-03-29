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
            traceMesssenger(false, "Page loading");
            if (Session["OpCount"] == null)
            {
                Session["OpCount"] = 0;
            }

            lblCount.Text = Session["OpCount"].ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            traceMesssenger(false, "Adding");
            txtAns.Text = (double.Parse(txtOp1.Text) + double.Parse(txtOp2.Text)).ToString();
            opCount();
        }

        protected void btnMinus_Click(object sender, EventArgs e)
        {
            traceMesssenger(false, "Subtracting");
            txtAns.Text = (double.Parse(txtOp1.Text) - double.Parse(txtOp2.Text)).ToString();
            opCount();
        }

        protected void btnMulti_Click(object sender, EventArgs e)
        {
            traceMesssenger(false, "Mulitplying");
            txtAns.Text = (double.Parse(txtOp1.Text) * double.Parse(txtOp2.Text)).ToString();
            opCount();
        }

        protected void btnDiv_Click(object sender, EventArgs e)
        {
            traceMesssenger(true, "Do not divide by zero!");
            txtAns.Text = (double.Parse(txtOp1.Text) / double.Parse(txtOp2.Text)).ToString();
            opCount();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            traceMesssenger(false, "Clearing in/outputs");
            txtOp1.Text = "";
            txtOp2.Text = "";
            txtAns.Text = "";
            opCount();
        }

        private void opCount()
        {
            traceMesssenger(true, "Counting operations");
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

        private void traceMesssenger(bool isWarn, string msg)
        {
            if (Trace.IsEnabled)
            {
                if (!isWarn)
                {
                    Trace.Write(msg);
                }
                else
                {
                    Trace.Warn(msg);
                }
            }
        }
    }
}