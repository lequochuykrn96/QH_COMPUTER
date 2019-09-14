using QH_COMPUTER.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QH_COMPUTER
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Book> GetBooks([QueryString("id")] int? categoryId)
        {
            var _db = new QH_COMPUTER.Models.BookContext();
            IQueryable<Book> query = _db.Books;
            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.CategoryID == categoryId);
            }
            return query;
        }
    }
}