using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace QH_COMPUTER.Models
{
    public class BookDatabaseInitializer : DropCreateDatabaseAlways<BookContext>
    {
        protected override void Seed(BookContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetBooks().ForEach(p => context.Books.Add(p));
        }
        private static List<Category> GetCategories()
        {
            var categories = new List<Category>
            {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "DELL"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "APPLE"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "ACER"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "ASUS"
                }
            };
            return categories;
        }
        private static List<Book> GetBooks()
        {
            var books = new List<Book> {
                new Book
                {
                    BookID = 1,
                    BookName = "Dell-inspiron-3576-i3-7020u",
                    Description = ".....",
                    ImagePath ="DELL/dell-inspiron-3576-i3-7020u-450-600x600.png",
                    UnitPrice = 16000000,
                    CategoryID = 1
                    },
                new Book
                {
                    BookID = 2,
                    BookName = "Dell-vostro-3468-i3-7020u",
                    Description = "......",
                    ImagePath ="DELL/dell-vostro-3468-i3-7020u-70161069-15-600x600.jpg",
                    UnitPrice = 19000000,
                    CategoryID = 1
                },
                new Book
                {
                    BookID = 3,
                    BookName = "Apple-Macbook-Air-2019-i5-16ghz-8gb-128gb",
                    Description = "......",
                    ImagePath ="APPLE/apple-macbook-air-2019-i5-16ghz-8gb-128gb-mvfm2sa-13-32-600x600.jpg",
                    UnitPrice = 55000000,
                    CategoryID = 2
                },
                new Book
                {
                    BookID = 4,
                    BookName = "Apple-Macbook-Air-i5-5350u",
                    Description = ".....",
                    ImagePath ="APPLE/apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg",
                    UnitPrice = 34000000,
                    CategoryID = 2
                },
                new Book
                {
                    BookID = 5,
                    BookName = "Acer-Aspire-i3-7020u",
                    Description = ".....",
                    ImagePath ="ACER/acer-aspire-3-a315-54-30fk-i3-7020u-4gb-1tb-win10-18-600x600.jpg",
                    UnitPrice = 13000000,
                    CategoryID = 3
                },
                new Book
                {
                    BookID = 6,
                    BookName = "Acer-Aspire-a314-31",
                    Description = ".....",
                    ImagePath ="ACER/acer-aspire-a314-31-c2ux-nxgnssv008-600x600.jpg",
                    UnitPrice = 18000000,
                    CategoryID = 3
                },
                new Book
                {
                    BookID = 7,
                    BookName = "Asus-X407ua",
                    Description = ".....",
                    ImagePath ="ASUS/asus-x407ua-bv351t-600x600.jpg",
                    UnitPrice = 15000000,
                    CategoryID = 4
                },
                new Book
                {
                    BookID = 8,
                    BookName = "Asus-X407ua-i37020u",
                    Description = "......",
                    ImagePath ="ASUS/asus-x407ua-i37020u-4gb-1tb-14-win1-0-bv345t-xam-2-2-600x600.jpg",
                    UnitPrice = 160000000,
                    CategoryID = 4
                },
            };
            return books;
        }
    }
}