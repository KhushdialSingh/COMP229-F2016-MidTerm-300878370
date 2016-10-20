using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMP229_F2016_MidTerm_300878370.Models;

namespace COMP229_F2016_MidTerm_300878370
{
    public partial class TodoList : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            // if loading the page for the first time
            // populate the TodoGridView
            if (!IsPostBack)
            {
                // Get the data
                this.GetTodo();
            }
        }

        private void GetTodo()
        {
            // connect to EF DB
            using (TodoContext db = new TodoContext())
            {
                // query the Todos Table using EF and LINQ
                var todolist = (from ToDoList in db.Todos
                                select ToDoList);

                // bind the result to the TodoGridView
                GridView.DataSource = todolist.ToList();
                GridView.DataBind();
            }
        }

    }
}