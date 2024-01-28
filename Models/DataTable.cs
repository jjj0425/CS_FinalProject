namespace FinalProject.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    public partial class Users
    {
        [Key]
        [StringLength(50)]
        public string UserName { get; set; }

        [Required]
        [StringLength(50)]
        public string Password { get; set; }
    }
    public partial class Groups
    {
        [Key]
        [StringLength(50)]
        public string GroupName { get; set; }

        [Required]
        [StringLength(50)]
        public string GroupOwner { get; set; }
    }
    public partial class UserGroup
    {
        [Key]
        public int ID { get; set; }
        public string UserName { get; set; }
        public string GroupName { get; set; }
    }
}
