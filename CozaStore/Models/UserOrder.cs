using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GBFShoe.Models
{
    public class UserOrder
    {
        public User user { get; set; }
        public Order order { get; set; }
    }
}