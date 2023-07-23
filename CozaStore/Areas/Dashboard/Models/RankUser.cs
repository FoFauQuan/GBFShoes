using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using GBFShoe.Models;
namespace GBFShoe.Areas.Dashboard.Models
{
    public class RankUser
    {
        public User user { get; set; }
        public decimal? total { get; set; }
    }
}