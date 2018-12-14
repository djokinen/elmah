using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using www.Dal;

namespace www
{
	public partial class _default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			// applicationNames.DataSource = DataAccess.GetErrors().Select(s => s.Application).Distinct().ToList();
			// applicationNames.DataBind();

			repeater.DataSource = DataAccess.GetErrorsGrouped();
			repeater.DataBind();
		}
	}
}