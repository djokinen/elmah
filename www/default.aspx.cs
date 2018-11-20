using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace www
{
	public partial class _default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			using (var entities = new ErrorLogEntities())
			{
				applicationNames.DataSource = entities.ELMAH_Error.Select(s => s.Application).Distinct().ToList();
				applicationNames.DataBind();

				grid.DataSource = entities.ELMAH_Error.ToList();
				grid.DataBind();
			}
		}
	}
}