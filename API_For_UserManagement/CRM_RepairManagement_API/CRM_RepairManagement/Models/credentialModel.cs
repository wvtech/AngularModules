using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class credentialModel
    {
    public long RoleId {get;set;}
    public long OrgId {get;set;}
    public long UserId {get;set;}    
    public string RoleName { get; set; }
    public long CompanyId{ get; set; }
    public long Id { get; set; }
    public long PropertyId { get; set; }
    public long ActivityId { get; set; }
    public long ModuleId { get; set; }
    public string EmailId { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }
    }
}