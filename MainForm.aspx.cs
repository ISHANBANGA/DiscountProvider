using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiscountProvider
{
    public partial class MainForm : System.Web.UI.Page
    {
        protected String[] category = { "Individual", "NonProfit", "Corporate" };
        //what does protected mean? it can be seen in same packages.
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_Productname.Text = " ";
            lbl_cost.Text = " ";
            lbl_Quantiy.Text = " ";
            if (!IsPostBack)
            {
                cmbcategory.DataSource = category;
                cmbcategory.DataBind();
            }
        }

        protected void btnBill_Click(object sender, EventArgs e)
        {
            if (txtprod.Text.Length == 0 && txtquantity.Text.Length == 0 && txtcost.Text.Length == 0)
            {
                lbl_Productname.Text = "Required";
                lbl_cost.Text = "Required";
                lbl_Quantiy.Text = "Required";
            }
            else
            {
                String c;
                int q = 0;
                float r = 0.0f, a, d, n;
                d = 0;
                try
                {
                    q = Convert.ToInt32(txtquantity.Text);         // To avoid exception of 'Input string was not in a correct format' I handled it with and Exception
                    r = Convert.ToSingle(txtcost.Text);

                }
                catch (Exception f)
                {
                    Console.WriteLine($"Exception caught: {f}");
                }

                a = q * r;
                c = cmbcategory.SelectedItem.Text;
                if (String.Compare(c, "Individual") == 0)
                {
                    Response.Redirect("");
                    d = (float)a * 10 / 100;                        // 10 % discount on individual selected item 
                }
                if (String.Compare(c, "NonProfit") == 0)               // 20% discount on NonProfit selected item  
                {
                    d = (float)a * 20 / 100;
                }
                if (String.Compare(c, "Corporate") == 0)                     // 30% discount on Corporate Selected item 
                {
                    d = (float)a * 30 / 100;
                }
                n = a - d;

                txtamount.Text = a.ToString();
                txtDiscount.Text = d.ToString();
                txtNamount.Text = n.ToString();
            }
        }
    }
}