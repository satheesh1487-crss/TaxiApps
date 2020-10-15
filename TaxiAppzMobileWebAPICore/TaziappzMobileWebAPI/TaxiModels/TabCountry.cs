﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TaziappzMobileWebAPI.TaxiModels
{
    [Table("tab_Country")]
    public partial class TabCountry
    {
        public TabCountry()
        {
            TabAdmin = new HashSet<TabAdmin>();
            TabAdminDetails = new HashSet<TabAdminDetails>();
            TabCurrencies = new HashSet<TabCurrencies>();
            TabDrivers = new HashSet<TabDrivers>();
            TabServicelocation = new HashSet<TabServicelocation>();
            TabTimezone = new HashSet<TabTimezone>();
            TabUser = new HashSet<TabUser>();
        }

        [Key]
        public long CountryId { get; set; }
        [StringLength(20)]
        public string Code { get; set; }
        [StringLength(200)]
        public string Name { get; set; }
        [StringLength(100)]
        public string Currency { get; set; }
        [Column("d_code")]
        [StringLength(20)]
        public string DCode { get; set; }
        [Column("Created_By")]
        [StringLength(100)]
        public string CreatedBy { get; set; }
        [Column("Created_At", TypeName = "datetime")]
        public DateTime? CreatedAt { get; set; }
        [Column("Updated_At", TypeName = "datetime")]
        public DateTime? UpdatedAt { get; set; }
        [Column("Deleted_At", TypeName = "datetime")]
        public DateTime? DeletedAt { get; set; }
        [Column("isActive")]
        public bool? IsActive { get; set; }
        [Column("isDelete")]
        public bool? IsDelete { get; set; }
        [Column("updated_by")]
        [StringLength(500)]
        public string UpdatedBy { get; set; }
        [Column("deleted_by")]
        [StringLength(500)]
        public string DeletedBy { get; set; }

        [InverseProperty("ZoneAccessNavigation")]
        public virtual ICollection<TabAdmin> TabAdmin { get; set; }
        [InverseProperty("Country")]
        public virtual ICollection<TabAdminDetails> TabAdminDetails { get; set; }
        [InverseProperty("Country")]
        public virtual ICollection<TabCurrencies> TabCurrencies { get; set; }
        [InverseProperty("Country")]
        public virtual ICollection<TabDrivers> TabDrivers { get; set; }
        [InverseProperty("Country")]
        public virtual ICollection<TabServicelocation> TabServicelocation { get; set; }
        [InverseProperty("Country")]
        public virtual ICollection<TabTimezone> TabTimezone { get; set; }
        [InverseProperty("Country")]
        public virtual ICollection<TabUser> TabUser { get; set; }
    }
}
