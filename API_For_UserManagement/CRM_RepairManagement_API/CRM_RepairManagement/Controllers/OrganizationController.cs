using CRM_RepairManagement.BusinessLayer;
using CRM_RepairManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CRM_RepairManagement.Controllers
{
    public class OrganizationController : ApiController
    {
        // GET: api/Organization
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Organization/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Organization
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Organization/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Organization/5
        public void Delete(int id)
        {
        }

        Organization_Sp_Class obj = new Organization_Sp_Class();

        //Organization and User/Insert with update
        [HttpPost]
        [ActionName("InsertOrgAndUser")]
        public ResponseModel InsertOrgAndUser(UserProfileModel model)
        {
            return obj.InsertOrgAndUser(model);
        }

        //Organization/Delete
        [HttpPost]
        [ActionName("DeleteOrganizaton")]
        public ResponseModel DeleteOrganizaton(credentialModel model)
        {
            return obj.DeleteOrganizaton(model);
        }

        //UserInfo/Delete
        [HttpPost]
        [ActionName("DeleteUserInfo")]
        public ResponseModel DeleteUserInfo(credentialModel model)
        {
            return obj.DeleteUserInfo(model);
        }

        //Check Unique Email Address
        [HttpPost]
        [ActionName("CheckUniqueEmailAddress")]
        public ResponseModel CheckUniqueEmailAddress(credentialModel model)
        {
            return obj.CheckUniqueEmailAddress(model);
        }

        //Check Unique User Name
        [HttpPost]
        [ActionName("CheckUniqueUserName")]
        public ResponseModel CheckUniqueUserName(credentialModel model)
        {
            return obj.CheckUniqueUserName(model);
        }

        //User Get By UserName/EmailId and Paswword
        [HttpPost]
        [ActionName("GetUserInfoByUserNamePassword")]
        public List<UserProfileModel> GetUserInfoByUserNamePassword(credentialModel model)
        {
            return obj.GetUserInfoByUserNamePassword(model);
        }

        //Users Get By OrgId
        [HttpPost]
        [ActionName("GetUsersByOrgId")]
        public List<UserProfileModel> GetUsersByOrgId(credentialModel model)
        
        {
            return obj.GetUsersByOrgId(model);
        }

        //Users Get By UserId
        [HttpPost]
        [ActionName("GetUsersByUserId")]
        public List<UserProfileModel> GetUsersByUserId(credentialModel model)
        {
            return obj.GetUsersByUserId(model);
        }

      
        //Auto Complete State on Dropdown List
        [HttpPost]
        [ActionName("AutoCompleteState")]
        public List<StateModel> AutoCompleteState(StateModel model)
        {
            return obj.AutoCompleteState(model);
        }

        //Auto Complete City on Dropdown List
        [HttpPost]
        [ActionName("AutoCompleteCity")]
        public List<CityModel> AutoCompleteCity(CityModel model)
        {
            return obj.AutoCompleteCity(model);
        }

        //City Insert
        [HttpPost]
        [ActionName("InsertCity")]
        public ResponseModel InsertCity(CityModel model)
        {
            City_Sp_Class obj = new City_Sp_Class();
            return obj.InsertCity(model);
        }
        //City Insert
        [HttpPost]
        [ActionName("InsertState")]
        public ResponseModel InsertState(StateModel model)
        {
            State_Sp_Class obj = new State_Sp_Class();
            return obj.InsertState(model);
        }

        //Login Detail Insert 
        [HttpPost]
        [ActionName("InsertLoginDetail")]
        public ResponseModel InsertLoginDetail(LoginDetailModel model)
        {
            return obj.InsertLoginDetail(model);
        }

        //Role Insert 
        [HttpPost]
        [ActionName("InsertRole")]
        public ResponseModel InsertRole(RoleModel model)
        {
            return obj.InsertRole(model);
        }

        //Role Get By Org Id 
        [HttpPost]
        [ActionName("GetRoleByOrgId")]
        public List<RoleModel> GetRoleByOrgId(credentialModel model)
        {
            return obj.GetRoleByOrgId(model);
        }

        //Organization/Active
        [HttpPost]
        [ActionName("ActiveOrganization")]
        public ResponseModel ActiveOrganization(credentialModel model)
        {
            return obj.ActiveOrganization(model);
        }

        //UserInfo/Active
        [HttpPost]
        [ActionName("ActiveUserInfo")]
        public ResponseModel ActiveUserInfo(credentialModel model)
        {
            return obj.ActiveUserInfo(model);
        }
                
    }
}
