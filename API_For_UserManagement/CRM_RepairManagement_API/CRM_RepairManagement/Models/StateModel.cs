using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class StateModel : BaseModel
    {
        public long StateId { get; set; }
        public string StateName { get; set; }
    }
}