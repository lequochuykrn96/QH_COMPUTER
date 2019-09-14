using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace QH_COMPUTER.Models
{
    public class Book
    {
        [ScaffoldColumn(false)]
        public int BookID { get; set; }
        [Required, StringLength(100), Display(Name = "Name")]
        public string BookName { get; set; }
        [Required, StringLength(1000), Display(Name = "Book Description"),
        DataType(DataType.MultilineText)]
        public string Description { get; set; }
        public string ImagePath { get; set; }
        [Display(Name = "Price")]
        public float? UnitPrice { get; set; }
        public int? CategoryID { get; set; }
        public virtual Category Category { get; set; }
    }
}