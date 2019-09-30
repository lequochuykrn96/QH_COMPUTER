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
        public IQueryable<LapTop> GetLapTops([QueryString("id")] int? hangId)
        {
            var _db = new QH_COMPUTER.Models.TenDL();
            IQueryable<LapTop> query = _db.LapTops;
            if (hangId.HasValue && hangId > 0)
            {
                query = query.Where(p => p.HangID == hangId);
            }
            return query;
        }
    }
}