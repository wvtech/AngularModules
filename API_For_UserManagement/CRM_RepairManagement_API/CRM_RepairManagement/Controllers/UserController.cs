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
    public class UserController : ApiController
    {
        // GET: api/User
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/User/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/User
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/User/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/User/5
        public void Delete(int id)
        {
        }

        UserInfo_Sp_Class obj = new UserInfo_Sp_Class();

        
        //Get Users from UserInfo
        [HttpPost]
        [ActionName("GetUserByUserId")]
        public List<UserProfileModel> GetUserByUserId(ParameterModel model)
       {
            return obj.GetUserByUserId(model);
        }


        // Get list of All Modules
        [HttpPost]
        [ActionName("GetAllModuleListByOrgId")]
        public List<ModulesModel> GetAllModuleListByOrgId(ParameterModel model)
        {
            Modules_Sp_Class objMod = new Modules_Sp_Class();
            return objMod.GetAllModuleListByOrgId(model);
        }


        [HttpPost]
        [ActionName("InsertUserPermissions")]
        public ResponseModel InsertUserPermissions(List<PermissionModel> model)
        {
            UserPermissions_Sp_Class obj = new UserPermissions_Sp_Class();
            return obj.InsertUserPermissions(model);
        }



        [HttpPost]
        [ActionName("GetPermissionsByUserRoleOrUserId")]
        public List<PermissionModel> GetPermissionsByUserRoleOrUserId(credentialModel model)
        {
            UserPermissions_Sp_Class obj = new UserPermissions_Sp_Class();
            return obj.GetPermissionsByUserRoleOrUserId(model);
        }


        [HttpPost]
        [ActionName("GetUsersByOrgIdAndRoleId")]
        public List<UserInRole> GetUsersByOrgIdAndRoleId(credentialModel model)
        {
            UserInfo_Sp_Class obj = new UserInfo_Sp_Class();
            return obj.GetUsersByOrgIdAndRoleId(model);
        }


        [HttpPost]
        [ActionName("DashBoardAccessibility")]
        public PermissionModel DashBoardAccessibility(credentialModel model)
        {
            UserPermissions_Sp_Class obj = new UserPermissions_Sp_Class();
            return obj.DashBoardAccessibility(model);
        }

        [HttpPost]
        [ActionName("GetModuleAccessPermissions")]
        public PermissionModel GetModuleAccessPermissions(credentialModel model)
        {
            UserPermissions_Sp_Class obj = new UserPermissions_Sp_Class();
            return obj.GetModuleAccessPermissions(model);
        }

        [HttpPost]
        [ActionName("ReactiveUser")]
        public ResponseModel ReactiveUser(credentialModel model)
        {
            UserInfo_Sp_Class obj = new UserInfo_Sp_Class();
            return obj.ReactiveUser(model);
        }

        [HttpPost]
        [ActionName("ActiveUser")]
        public ResponseModel ActiveUser(credentialModel model)
        {
            UserInfo_Sp_Class obj = new UserInfo_Sp_Class();
            return obj.ActiveUser(model);
        }

        [HttpPost]
        [ActionName("InActiveUser")]
        public ResponseModel InActiveUser(credentialModel model)
        {
            UserInfo_Sp_Class obj = new UserInfo_Sp_Class();
            return obj.InActiveUser(model);
        }

        [HttpPost]
        [ActionName("SendRequestToReactiveUser")]
        public ResponseModel SendRequestToReactiveUser(credentialModel model)
        {
            UserInfo_Sp_Class obj = new UserInfo_Sp_Class();
            return obj.SendRequestToReactiveUser(model);
        }
    }
}
