using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    ClsContact objcontacts = new ClsContact();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            generateStopSpamText();
        }
    }
    public void generateStopSpamText()
    {
        int sum;
        Random ran = new Random();
        int firstNumber = ran.Next(1, 9);
        int secondNumber = ran.Next(1, 9);
        ViewState["spam"] = firstNumber + secondNumber;
        lblStopSpam.Text = firstNumber.ToString() + " + " + secondNumber.ToString();
        int x = Convert.ToInt32(firstNumber);
        int y = Convert.ToInt32(secondNumber);
        sum = x + y;
          lblsum.Text = sum.ToString();
        //string summm = sum.ToString();
    }
    protected void btn_SendMsg(object sender, EventArgs e)
    {

        string cMobile = "7393940477";
        string str = "%0a Following user tried to Contact you through your website Sangeet Sargam %0a";
        str += "%0a*Name* : " + txtname.Text + " " + txtlname.Text + "%0a";
        str += "%0a*E-mail* : " + txtemail.Text + "%0a";
        str += "%0a*Phone* : " + txtphone.Text + "%0a";
        str += "%0a*Message* : " + txtmsg.Text + "%0a";
        string url = "https://api.whatsapp.com/send?phone=+91" + cMobile + "&text=" + str + "";
        try
        {
            string incaptcha = (txtStopSpam.Text.Trim());

            int d = Convert.ToInt32(incaptcha);
            int captchaa = Convert.ToInt32(lblsum.Text.Trim());
            //cptCaptcha.ValidateCaptcha(txtCaptcha.Text.Trim());
            //if (cptCaptcha.UserValidated)
            if (d == captchaa)
            {
                lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( '" + url + "', null, 'height=500,width=900,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);


                bool result = objcontacts.SaveUpdateContacts(0, 0, txtname.Text, txtlname.Text, txtemail.Text, txtphone.Text, "", "", 0, 0, txtmsg.Text, "");
                string message = "Your details have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                txtname.Text = "";
                txtlname.Text = "";
                txtemail.Text = "";
                txtphone.Text = "";
                txtStopSpam.Text = string.Empty;
                lblErrorMessage.Text = string.Empty;
                txtmsg.Text = "";
            }
            else
            {
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                lblErrorMessage.Text = "Invalid Captcha";
            }

        }
        catch (Exception ex)
        {
            throw ex;

        }

    }
}