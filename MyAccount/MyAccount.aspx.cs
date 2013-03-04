using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitBTN_Click(object sender, EventArgs e)
    {
        bool isValidTest = false;
        Validate("1");
        isValidTest = IsValid;
        Validate("2");
        if (!isValidTest) return;
    }
}