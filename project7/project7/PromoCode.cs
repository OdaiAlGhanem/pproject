//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace project7
{
    using System;
    using System.Collections.Generic;
    
    public partial class PromoCode
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PromoCode()
        {
            this.SubscriptionsCustomers = new HashSet<SubscriptionsCustomer>();
        }
    
        public int PromoCodeID { get; set; }
        public string Code { get; set; }
        public decimal Discount { get; set; }
        public System.DateTime StartDate { get; set; }
        public System.DateTime EndDate { get; set; }
        public int MaxUses { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SubscriptionsCustomer> SubscriptionsCustomers { get; set; }
    }
}
