using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class LoginDetailModel:BaseModel
    {
        public long LoginDetailId { get; set; }
        public long UserId { get; set; }
        public string LoginIp { get; set; }
        public string LogoutIp { get; set; }
    }
}