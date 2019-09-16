﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;using System.ComponentModel.DataAnnotations;

namespace QH_COMPUTER.Models
{
    public class CartItem
    {
        [Key]
        public string ItemId { get; set; }
        public string CartId { get; set; }
        public int Quantity { get; set; }
        public System.DateTime DateCreated { get; set; }
        public int BookId { get; set; }
        public virtual Book Book { get; set; }
    }
}