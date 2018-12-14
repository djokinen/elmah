using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using www;
using System.Linq;
using www.Dal;

namespace unit_tests
{
	[TestClass]
	public class UnitTest1
	{
		[TestMethod]
		public void PassTest()
		{
			Assert.IsTrue(true);
		}

		[TestMethod]
		public void FailTest()
		{
			Assert.IsTrue(false);
		}

		[TestMethod]
		public void ErrorLogEntitiesExistenceTest()
		{
			try
			{
				ErrorLogEntities entities = new ErrorLogEntities();
				var errors = entities.ELMAH_Error;

				// if the entities object doesn't exist, then it will fail when trying to access a record
				Assert.IsTrue(errors.Count() >= 0);
			}
			catch (Exception ex)
			{
				Assert.Fail(ex.Message);
			}
		}
	}
}