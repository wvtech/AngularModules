using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class RoleModel
    {
        public long RoleId { get; set; }
        public string RoleName { get; set; }
        public long CreatedByOrg_Id { get; set; }
        public long CreatedByUser_Id { get; set; }
    }

    public class UserInRole
    {
        public long OrgId { get; set; }
        public long UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailId { get; set; }
    }
}