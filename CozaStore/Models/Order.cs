//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GBFShoe.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            this.DetailsOrders = new HashSet<DetailsOrder>();
        }
    
        public int Orderid { get; set; }
        public string Ordercode { get; set; }
        public Nullable<int> Userid { get; set; }
        public Nullable<decimal> TotalPrice { get; set; }
        public Nullable<int> Statuspay { get; set; }
        public Nullable<int> Status { get; set; }
        public Nullable<System.DateTime> OrderDay { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetailsOrder> DetailsOrders { get; set; }
        public virtual User User { get; set; }
    }
}
