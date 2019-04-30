using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webshop.Business;
namespace Webshop
{
    public partial class _default : System.Web.UI.Page
    {
        Controller _cont = new Controller();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvProducten.DataSource = _cont.haalProductenOp();
            gvProducten.DataBind();
        }

        protected void gvProducten_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(gvProducten.SelectedRow.Cells[0].Text);
        }
    }
}