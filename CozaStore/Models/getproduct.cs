using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GBFShoe.Models
{
    public class getproduct
    {
        public Product product { get; set; }
        public DetailsOrder detailsOrder { get; set; }
        public Size Size { get; set; }
        public Color Color { get; set; } 
    }
}