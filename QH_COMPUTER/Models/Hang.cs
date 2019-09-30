using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace QH_COMPUTER.Models
{
    public class Hang
    {
        [ScaffoldColumn(false)]
        public int HangID { get; set; }
        [Required, StringLength(100), Display(Name = "TenLapTop")]
        public string TenHang { get; set; }
        public virtual ICollection<LapTop> Laptops { get; set; }
    }
}