using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class BaseModel
    {       
        public Boolean Org_IsActive { get; set; }
        public Boolean Org_IsDelete { get; set; }
        public Boolean User_IsActive { get; set; }
        public Boolean User_IsDelete { get; set; }
        public long CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public long ModifiedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
        public Boolean IsActive { get; set; }
        public Boolean IsDelete { get; set; }
    }
}