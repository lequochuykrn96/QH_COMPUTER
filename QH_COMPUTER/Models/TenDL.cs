using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace QH_COMPUTER.Models
{
    public class TenDL : DbContext
    {
        public TenDL() : base("QH_COMPUTER")
        { }
        public DbSet<Hang> Hangs { get; set; }
        public DbSet<LapTop> LapTops { get; set; }        public DbSet<CartItem> ShoppingCartItems { get; set; }
    }
}