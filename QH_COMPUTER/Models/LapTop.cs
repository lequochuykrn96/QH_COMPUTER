using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace QH_COMPUTER.Models
{
    public class LapTop
    {
        [ScaffoldColumn(false)]
        public int LaptopID { get; set; }
        [Required, StringLength(100), Display(Name = "LapTop")]
        public string TenLaptop { get; set; }
        [Required, StringLength(1000), Display(Name = "Mô Tả"),
        DataType(DataType.MultilineText)]
        public string MoTa { get; set; }
        public string HinhAnh { get; set; }
        [Display(Name = "GiaBan")]
        public float? GiaBan { get; set; }
        public int? HangID { get; set; }
        public virtual Hang Hang { get; set; }
    }
}