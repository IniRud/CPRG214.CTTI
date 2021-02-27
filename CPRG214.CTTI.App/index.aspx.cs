using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CPRG214.CTTI.Data;

namespace CPRG214.CTTI.App
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // this only execute the 1st time the page loads
                var db = new CTTIEntities();
                var instructors = db.Instructors.ToList();
                uxInstructors.DataSource = instructors;
                uxInstructors.DataBind();
            }

        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            var instructor = new Instructor { FirstName = uxFirstName.Text, LastName = uxLastName.Text };
            var db = new CTTIEntities();
            db.Instructors.Add(instructor);
            db.SaveChanges();
            uxInstructors.DataSource = db.Instructors.ToList();
            uxInstructors.DataBind();
        }
    }
}