using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QH_COMPUTER.Models;
using QH_COMPUTER.Logic;
using System.Diagnostics;

namespace QH_COMPUTER
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rawId = Request.QueryString["LaptopID"];
            int LaptopId;
            if (!String.IsNullOrEmpty(rawId) && int.TryParse(rawId, out LaptopId))
            {
                using (ShoppingCartActions usersShoppingCart = new
                ShoppingCartActions())
                {
                    usersShoppingCart.AddToCart(Convert.ToInt16(rawId));
                }
            }
            else
            {
                Debug.Fail("ERROR : We should never get to AddToCart.aspx without a LaptopId.");
               
                throw new Exception("ERROR : It is illegal to load AddToCart.aspx without setting a LaptopId.");
           }
            Response.Redirect("ShoppingCart.aspx");
        }
    }

}