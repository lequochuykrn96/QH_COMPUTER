using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QH_COMPUTER.Models
{
    public class Category
    {
        [ScaffoldColumn(false)]
        public int CategoryID { get; set; }
        [Required, StringLength(100), Display(Name = "Name")]
        public string CategoryName { get; set; }
        public virtual ICollection<Book> Books { get; set; }
    }
}