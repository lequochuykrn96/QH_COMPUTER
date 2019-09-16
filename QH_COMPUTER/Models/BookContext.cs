using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace QH_COMPUTER.Models
{
    public class BookContext : DbContext
    {
        public BookContext() : base("QH_COMPUTER")
        { }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Book> Books { get; set; }        public DbSet<CartItem> ShoppingCartItems { get; set; }
    }
}