using System.Collections.Generic;
using System.Linq;

namespace www.Dal
{
	public static class DataAccess
	{
		internal static List<ELMAH_Error> GetErrors()
		{
			using (var entities = new ErrorLogEntities())
			{
				return entities.ELMAH_Error.ToList();
			}
		}

		internal static object GetErrorsGrouped()
		{
			using (var entities = new ErrorLogEntities())
			{
				var values = (
					from t in entities.ELMAH_Error
					group t by new { t.Application, t.Host, t.Type, t.Message, t.StatusCode }
					into grouped
					select new
					{
						TimeUtc = grouped.Max(m => m.TimeUtc),
						Occurrences = grouped.Count(),
						Application = grouped.Key.Application,
						Host = grouped.Key.Host,
						Type = grouped.Key.Type,
						Message = grouped.Key.Message,
						StatusCode = grouped.Key.StatusCode
					});

				return values.ToList();
			}
		}
	}
}