using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class CityModel : BaseModel
    {
        public long CityId { get; set; }
        public string CityName { get; set; }
    }
}