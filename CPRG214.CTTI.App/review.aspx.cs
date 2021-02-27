using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CPRG214.CTTI.Data;

namespace CPRG214.CTTI.App
{
    public partial class review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var db = new CTTIEntities();
                uxCourses.DataSource = db.Courses.ToList();
                uxCourses.DataTextField = "CourseName";
                uxCourses.DataValueField = "Id";
                uxCourses.DataBind();
            }
        }

        protected void uxCourses_SelectedIndexChanged(object sender, EventArgs e)
        {
            uxDisplay.Text = uxCourses.SelectedValue;
        }
    }
}