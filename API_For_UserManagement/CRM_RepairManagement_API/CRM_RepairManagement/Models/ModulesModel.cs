using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class ModulesModel
    {
        public long ModuleId { get; set; }
        public string ModuleName { get; set; }
        public long CreatedByOrg_Id { get; set; }      
    }

   
}