using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class PermissionModel
    {
        public long Org_Id { get; set; }
        public long U_RoleId { get; set; }
        public long UserId { get; set; }       
        public long ModuleId { get; set; }

        public Boolean UserManagement { get; set; }
        public Boolean PropertyLevel { get; set; }
        public Boolean CompanyLevel { get; set; }
        public Boolean TallyMarketing { get; set; }
        public Boolean CapitalProject { get; set; }
        public Boolean WorkOrder { get; set; }

        public Boolean All { get; set; }
        public Boolean Add { get; set; }
        public Boolean Edit { get; set; }
        public Boolean Delete { get; set; }
        public Boolean View { get; set; }
        public Boolean ReActivate { get; set; }
        public Boolean Print { get; set; }
        public Boolean Finalize { get; set; }
        public long ModifiedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
    }
}