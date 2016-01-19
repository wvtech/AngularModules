using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.Models
{
    public class UserProfileModel:BaseModel
    {
        public long OrgId { get; set; }
        public long UserId { get; set; }
        public string OrgName { get; set; }
        public string OrgStreet { get; set; }
        public string OrgState { get; set; }
        public string OrgCity { get; set; }
        public long OrgStateId { get; set; }
        public long OrgCityId { get; set; }
        public long OrgCreatedBy { get; set; }
        public DateTime OrgCreatedOn { get; set; }
        public long OrgModifiedBy { get; set; }
        public DateTime OrgModifiedOn { get; set; }
        public string UserFirstName { get; set; }     
        public string UserLastName { get; set; }
        public string RegisteredAs { get; set; }
        public string Logo { get; set; }
        public string UserName { get; set; }
        public long UserCityId { get; set; }
        public long UserStateId { get; set; }
        public string UserCity { get; set; }
        public long RoleId { get; set; }
        public string RoleName { get; set; }
        public string ProfilePhoto { get; set; }        
        public string UserState { get; set; }
        public string UserStreet { get; set; }
        public string UserEmailId { get; set; }
        public string Password { get; set; }       
        public string UserMobileNo { get; set; }
        public long CreatedByRoleId { get; set; }
    }
}