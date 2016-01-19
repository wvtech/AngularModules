using CRM_RepairManagement.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CRM_RepairManagement.BusinessLayer
{
    public class Organization_Sp_Class
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RepairManagementConnectioin"].ToString());//Connection Class Object
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        ResponseModel obj = new ResponseModel();
        State_Sp_Class stateObj = new State_Sp_Class();
        City_Sp_Class cityObj = new City_Sp_Class();

        public int intUserId;
        int ret = 1;
        string message = string.Empty;

        //Get Data From Organization Table By OrgId
        public List<UserProfileModel> GetUsersByOrgId(credentialModel mymodel)
        {
            List<UserProfileModel> model = new List<UserProfileModel>();
            try
            {
                cmd = new SqlCommand("GetUsersByOrgId_Sp", con);
                cmd.Parameters.Add("@OrgId", SqlDbType.BigInt).Value = mymodel.OrgId;
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = mymodel.UserId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.Add(new UserProfileModel
                    {
                        OrgId = Convert.ToInt32(dr["Org_OrgId"]),
                        OrgName = dr["Org_Name"].ToString(),
                        OrgStreet = dr["Org_Street"].ToString(),
                        OrgCity = dr["Org_CityName"].ToString(),
                        OrgState = dr["Org_StateName"].ToString(),
                        RegisteredAs = dr["Org_RegisteredAs"].ToString(),
                        Logo = dr["Org_Logo"].ToString(),
                        Org_IsActive = Convert.ToBoolean(dr["Org_IsActive"]),
                        Org_IsDelete = Convert.ToBoolean(dr["Org_IsDelete"]),
                        UserId = Convert.ToInt32(dr["User_UserId"]),
                        UserFirstName = dr["User_FirstName"].ToString(),
                        UserLastName = dr["User_LastName"].ToString(),
                        UserStreet = dr["User_Street"].ToString(),
                        UserCityId = Convert.ToInt32(dr["User_CityId"]),
                        UserStateId = Convert.ToInt32(dr["User_StateId"]),
                        ProfilePhoto = dr["User_ProfilePhoto"].ToString(),
                        RoleId = Convert.ToInt32(dr["User_RoleId"]),
                        RoleName = dr["User_RoleName"].ToString(),
                        UserName = dr["User_UserName"].ToString(),
                        UserEmailId = dr["User_EmailId"].ToString(),
                        UserMobileNo = dr["User_MobileNo"].ToString(),
                        Password = PasswordSecurity.Decrypt(dr["User_Password"].ToString()),//Password Decryption
                        CreatedBy = Convert.ToInt32(dr["User_CreatedBy"]),
                        CreatedOn = Convert.ToDateTime(dr["User_CreatedOn"]),
                        ModifiedBy = Convert.ToInt32(dr["User_ModifiedBy"]),
                        ModifiedOn = Convert.ToDateTime(dr["User_ModifiedOn"]),
                        IsActive = Convert.ToBoolean(dr["User_IsActive"]),
                        IsDelete = Convert.ToBoolean(dr["User_IsDelete"]),
                    });
                }
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }

            return model;
        }

        //Get Data From Organization Table By OrgId,UserId
        public List<UserProfileModel> GetUsersByUserId(credentialModel mymodel)
        {
            List<UserProfileModel> model = new List<UserProfileModel>();
            try
            {
                cmd = new SqlCommand("GetUsersByUserId_Sp", con);
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = mymodel.UserId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.Add(new UserProfileModel
                    {
                        OrgId = Convert.ToInt32(dr["Org_OrgId"]),
                        OrgName = dr["Org_Name"].ToString(),
                        OrgStreet = dr["Org_Street"].ToString(),
                        OrgCity = dr["Org_CityName"].ToString(),
                        OrgState = dr["Org_StateName"].ToString(),
                        RegisteredAs = dr["Org_RegisteredAs"].ToString(),
                        Logo = dr["Org_Logo"].ToString(),
                        Org_IsActive = Convert.ToBoolean(dr["Org_IsActive"]),
                        Org_IsDelete = Convert.ToBoolean(dr["Org_IsDelete"]),
                        UserId = Convert.ToInt32(dr["User_UserId"]),
                        UserFirstName = dr["User_FirstName"].ToString(),
                        UserLastName = dr["User_LastName"].ToString(),
                        UserStreet = dr["User_Street"].ToString(),
                        UserCityId = Convert.ToInt32(dr["User_CityId"]),
                        UserStateId = Convert.ToInt32(dr["User_StateId"]),
                        ProfilePhoto = dr["User_ProfilePhoto"].ToString(),
                        RoleId = Convert.ToInt32(dr["User_RoleId"]),
                        RoleName = dr["User_RoleName"].ToString(),
                        UserName = dr["User_UserName"].ToString(),
                        UserEmailId = dr["User_EmailId"].ToString(),
                        UserMobileNo = dr["User_MobileNo"].ToString(),
                        Password = PasswordSecurity.Decrypt(dr["User_Password"].ToString()),//Password Decryption
                        CreatedBy = Convert.ToInt32(dr["User_CreatedBy"]),
                        CreatedOn = Convert.ToDateTime(dr["User_CreatedOn"]),
                        ModifiedBy = Convert.ToInt32(dr["User_ModifiedBy"]),
                        ModifiedOn = Convert.ToDateTime(dr["User_ModifiedOn"]),
                        IsActive = Convert.ToBoolean(dr["User_IsActive"]),
                        IsDelete = Convert.ToBoolean(dr["User_IsDelete"]),
                    });
                }
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }

            return model;
        }

        
        //Data Insert in Organizaton Table  
        public ResponseModel InsertOrgAndUser(UserProfileModel model)
        {
            try
            {
                cmd = new SqlCommand("InsertOrgAndUser_Sp", con);
                if (model.UserCityId == 0 && model.UserCity != null)
                {
                    CityModel cityModel = new CityModel();
                    cityModel.CityName = model.UserCity;
                    cityModel.CreatedBy = model.CreatedBy;
                    ResponseModel responseModel = cityObj.InsertCity(cityModel);
                    model.UserCityId = responseModel.Response;
                }

                if (model.UserStateId == 0 && model.UserState != null)
                {
                    StateModel model3 = new StateModel();
                    model3.StateName = model.UserState;
                    model3.CreatedBy = model.CreatedBy;
                    ResponseModel model1 = stateObj.InsertState(model3);
                    model.UserStateId = model1.Response;
                }
                if (model.OrgCityId == 0 && model.OrgCity != null)
                {
                    CityModel cityModel = new CityModel();
                    cityModel.CityName = model.OrgCity;
                    cityModel.CreatedBy = model.CreatedBy;
                    ResponseModel responseModel = cityObj.InsertCity(cityModel);
                    model.OrgCityId = responseModel.Response;
                }

                if (model.OrgStateId == 0 && model.OrgState != null)
                {
                    StateModel model3 = new StateModel();
                    model3.StateName = model.OrgState;
                    model3.CreatedBy = model.CreatedBy;
                    ResponseModel model1 = stateObj.InsertState(model3);
                    model.OrgStateId = model1.Response;
                }

                if (model.RoleId == 0 && model.RoleName != null)
                {
                    RoleModel model3 = new RoleModel();
                    model3.RoleName = model.RoleName;
                    model3.CreatedByOrg_Id = model.OrgId;
                    model3.CreatedByUser_Id = model.CreatedBy;
                    ResponseModel model1 = InsertRole(model3);
                    model.RoleId = model1.Response;
                }

                //Organization_Tbl Fields
                if (model.OrgId > 0)
                    cmd.Parameters.Add("@OrgId", SqlDbType.BigInt).Value = model.OrgId;
                cmd.Parameters.Add("@Name", SqlDbType.VarChar, 400).Value = model.OrgName;
                cmd.Parameters.Add("@Street", SqlDbType.NVarChar, 100).Value = model.OrgStreet;

                if (model.OrgCityId > 0)
                    cmd.Parameters.Add("@CityId", SqlDbType.BigInt).Value = model.OrgCityId;

                if (model.OrgStateId > 0)
                    cmd.Parameters.Add("@StateId", SqlDbType.BigInt).Value = model.OrgStateId;
                cmd.Parameters.Add("@RegisteredAs", SqlDbType.VarChar, 50).Value = model.RegisteredAs;
                cmd.Parameters.Add("@Logo", SqlDbType.NVarChar, 150).Value = model.Logo;
                //User_Tbl Fields
                if (model.UserId > 0)
                    cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = model.UserId;
                cmd.Parameters.Add("@FirstName", SqlDbType.VarChar, 70).Value = model.UserFirstName;
                cmd.Parameters.Add("@LastName", SqlDbType.VarChar, 70).Value = model.UserLastName;
                cmd.Parameters.Add("@U_Street", SqlDbType.NVarChar, 100).Value = model.UserStreet;
                if (model.UserCityId > 0)
                    cmd.Parameters.Add("@U_CityId", SqlDbType.BigInt).Value = model.UserCityId;
                if (model.UserStateId > 0)
                    cmd.Parameters.Add("@U_StateId", SqlDbType.BigInt).Value = model.UserStateId;
                cmd.Parameters.Add("@ProfilePhoto", SqlDbType.NVarChar).Value = model.ProfilePhoto;
                cmd.Parameters.Add("@RoleId", SqlDbType.Int).Value = model.RoleId;
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 200).Value = model.UserName;
                cmd.Parameters.Add("@EmailId", SqlDbType.NVarChar, 150).Value = model.UserEmailId;
                cmd.Parameters.Add("@MobileNo", SqlDbType.NVarChar, 13).Value = model.UserMobileNo;
                cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = PasswordSecurity.Encrypt(model.Password);//Password Encryption
                cmd.Parameters.Add("@U_IsActive", SqlDbType.Bit).Value = model.User_IsActive;
                cmd.Parameters.Add("@U_IsDelete", SqlDbType.Bit).Value = model.User_IsDelete;
                //Common Fields
                cmd.Parameters.Add("@CreatedBy", SqlDbType.BigInt).Value = model.CreatedBy;
                cmd.Parameters.Add("@IsActive", SqlDbType.Bit).Value = model.IsActive;
                cmd.Parameters.Add("@IsDelete", SqlDbType.Bit).Value = model.IsDelete;
                cmd.Parameters.Add("@Result_OrgId", SqlDbType.BigInt).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@Result_UserId", SqlDbType.BigInt).Direction = ParameterDirection.Output;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                message = "Success";
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }

            obj.Response = ret;
            return obj;
        }

        //Data Delete from Organizaton Table 
        public ResponseModel DeleteOrganizaton(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("DeleteOrganization_Sp", con);
                cmd.Parameters.Add("@OrgId", SqlDbType.BigInt).Value = model.OrgId;
                cmd.Parameters.Add("@ModifiedBy", SqlDbType.BigInt).Value = model.UserId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                ret = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            if (con.State == ConnectionState.Open)
                con.Close();
            obj.Response = ret;
            return obj;
        }

        //Data Delete from UserInfo Table  
        public ResponseModel DeleteUserInfo(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("DeleteUserInfo_Sp", con);
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = model.UserId;
                cmd.Parameters.Add("@ModifiedBy", SqlDbType.BigInt).Value = model.UserId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                ret = cmd.ExecuteNonQuery();
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            obj.Response = ret;
            return obj;
        }

        //Unique Email Address Check in UserInfo Table 
        public ResponseModel CheckUniqueEmailAddress(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("CheckUniqueEmailAddress_Sp", con);
                cmd.Parameters.Add("@EmailId", SqlDbType.NVarChar, 150).Value = model.EmailId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                   
                        ret = 0;
                     
                        if (Convert.ToInt32(dr["OrgId"]) == model.OrgId && Convert.ToBoolean(dr["IsActive"]) == true)
                        {
                            obj.Message = "User with this Email Address already exists in your Organization.";
                        }
                        else if (Convert.ToInt32(dr["OrgId"]) == model.OrgId && Convert.ToBoolean(dr["IsActive"]) == false)
                        {
                            obj.Message = "User with this Email Address already exists.\n Do you want to reactive that user?";
                        }
                        else if (Convert.ToInt32(dr["OrgId"]) != model.OrgId && Convert.ToBoolean(dr["IsActive"]) == true)
                        {

                            obj.Message = "User with this Email Address already exists in other organization. \n Please select different Email.";
                        }
                        else if (Convert.ToInt32(dr["OrgId"]) != model.OrgId && Convert.ToBoolean(dr["IsActive"]) == false)
                        {
                            obj.Message = "User with this Email Address already exists in other organization. \n To reactive that user,Please send request to SuperAdmin.";
                        }
                   
                }
                else
                {
                    ret = 1;
                }

                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            obj.Response = ret;
            return obj;
        }

        //Unique UserName Check in UserInfo Table 
        public ResponseModel CheckUniqueUserName(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("CheckUniqueUserName_Sp", con);
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 200).Value = model.UserName;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                    con.Open();
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    if (Convert.ToInt32(dr["IsUnique"]) >= 1)
                    {
                        ret = 0;
                    }
                    else
                    {
                        ret = 1;
                    }
                }
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            obj.Response = ret;
            return obj;
        }

        //User Get By UserName/EmailId and Paswword
        public List<UserProfileModel> GetUserInfoByUserNamePassword(credentialModel mymodel)
        {
            List<UserProfileModel> model = new List<UserProfileModel>();
            int intValue = 0;
            try
            {
                cmd = new SqlCommand("GetUserInfoByUserNamePassword_Sp", con);
                cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 200).Value = mymodel.UserName;
                cmd.Parameters.Add("@Password", SqlDbType.NVarChar, 150).Value = PasswordSecurity.Encrypt(mymodel.Password);//Password Encryption
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                    con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.Add(new UserProfileModel
                    {
                        UserId = Convert.ToInt32(dr["User_UserId"]),
                        OrgId = Convert.ToInt32(dr["User_OrgId"]),
                        UserFirstName = dr["User_FirstName"].ToString(),
                        UserLastName = dr["User_LastName"].ToString(),
                        UserStreet = dr["User_Street"].ToString(),
                        UserStateId = Convert.ToInt32(dr["User_StateId"]),
                        UserState = dr["User_StateName"].ToString(),
                        UserCityId = Convert.ToInt32(dr["User_CityId"]),
                        UserCity = dr["User_CityName"].ToString(),
                        ProfilePhoto = dr["User_ProfilePhoto"].ToString(),
                        RoleId = Convert.ToInt32(dr["User_RoleId"]),
                        RoleName = dr["User_RoleName"].ToString(),
                        UserName = dr["User_UserName"].ToString(),
                        UserEmailId = dr["User_EmailId"].ToString(),
                        UserMobileNo = dr["User_MobileNo"].ToString(),
                        Password = PasswordSecurity.Decrypt(dr["User_Password"].ToString()),//Password Decryption
                        CreatedBy = Convert.ToInt32(dr["User_CreatedBy"]),
                        CreatedOn = Convert.ToDateTime(dr["User_CreatedOn"]),
                        ModifiedBy = Convert.ToInt32(dr["User_ModifiedBy"]),
                        ModifiedOn = Convert.ToDateTime(dr["User_ModifiedOn"]),
                        IsActive = Convert.ToBoolean(dr["User_IsActive"]),
                        IsDelete = Convert.ToBoolean(dr["User_IsDelete"]),
                        OrgName = dr["Org_Name"].ToString(),
                        OrgStreet = dr["Org_Street"].ToString(),
                        OrgCityId = Convert.ToInt32(dr["Org_CityId"]),
                        OrgCity = dr["Org_CityName"].ToString(),
                        OrgStateId = Convert.ToInt32(dr["Org_StateId"]),
                        OrgState = dr["Org_StateName"].ToString(),
                        RegisteredAs = dr["Org_RegisteredAs"].ToString(),
                        Logo = dr["Org_Logo"].ToString(),
                        OrgCreatedBy = Convert.ToInt32(dr["Org_CreatedBy"]),
                        OrgCreatedOn = Convert.ToDateTime(dr["Org_CreatedOn"]),
                        OrgModifiedBy = Convert.ToInt32(dr["Org_ModifiedBy"]),
                        OrgModifiedOn = Convert.ToDateTime(dr["Org_ModifiedOn"]),
                        Org_IsActive = Convert.ToBoolean(dr["Org_IsActive"]),
                        Org_IsDelete = Convert.ToBoolean(dr["Org_IsDelete"]),
                    });
                    intValue = Convert.ToInt32(dr["User_UserId"]);
                }

                Organization_Sp_Class objOrg = new Organization_Sp_Class();
                LoginDetailModel loginmodel = new LoginDetailModel();
                loginmodel.UserId = intValue;
                objOrg.InsertLoginDetail(loginmodel);

                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            return model;
        }

        //State will auto complete on dropdown list
        public List<StateModel> AutoCompleteState(StateModel mymodel)
        {
            List<StateModel> model = new List<StateModel>();
            try
            {
                SqlCommand cmd = new SqlCommand("AutoCompleteState_Sp", con);
                cmd.Parameters.Add("@StateName", SqlDbType.NVarChar, 150).Value = mymodel.StateName;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.Add(new StateModel
                    {
                        StateId = Convert.ToInt32(dr["StateId"]),
                        StateName = dr["StateName"].ToString(),
                        CreatedBy = Convert.ToInt32(dr["CreatedBy"]),
                        CreatedOn = Convert.ToDateTime(dr["CreatedOn"]),
                        ModifiedBy = Convert.ToInt32(dr["ModifiedBy"]),
                        ModifiedOn = Convert.ToDateTime(dr["ModifiedOn"]),
                        IsActive = Convert.ToBoolean(dr["IsActive"]),
                        IsDelete = Convert.ToBoolean(dr["IsDelete"]),
                    });
                }
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            return model;
            // return Json(model, JsonRequestBehavior.AllowGet);
        }

        //City will auto complete on dropdown list
        public List<CityModel> AutoCompleteCity(CityModel mymodel)
        {
            List<CityModel> model = new List<CityModel>();
            try
            {
                SqlCommand cmd = new SqlCommand("AutoCompleteCity_Sp", con);
                cmd.Parameters.Add("@CityName", SqlDbType.NVarChar, 150).Value = mymodel.CityName;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.Add(new CityModel
                    {
                        CityId = Convert.ToInt32(dr["CityId"]),
                        CityName = dr["CityName"].ToString(),
                        CreatedBy = Convert.ToInt32(dr["CreatedBy"]),
                        CreatedOn = Convert.ToDateTime(dr["CreatedOn"]),
                        ModifiedBy = Convert.ToInt32(dr["ModifiedBy"]),
                        ModifiedOn = Convert.ToDateTime(dr["ModifiedOn"]),
                        IsActive = Convert.ToBoolean(dr["IsActive"]),
                        IsDelete = Convert.ToBoolean(dr["IsDelete"]),
                    });
                }
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            return model;
            // return Json(model, JsonRequestBehavior.AllowGet);
        }

        public ResponseModel InsertLoginDetail(LoginDetailModel model)
        {
            try
            {
                string strHostName = "";
                string VisitorsIPAddr = "";
                if (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
                {
                    VisitorsIPAddr = System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
                    strHostName = System.Web.HttpContext.Current.Request.UserHostName;
                }
                else if (System.Web.HttpContext.Current.Request.UserHostAddress.Length != 0)
                {
                    VisitorsIPAddr = System.Web.HttpContext.Current.Request.UserHostAddress;
                    strHostName = System.Web.HttpContext.Current.Request.UserHostName;
                }
                cmd = new SqlCommand("InsertLoginDetail_Sp", con);
                if (model.LoginDetailId > 0)
                    cmd.Parameters.Add("@LoginDetailId", SqlDbType.BigInt).Value = model.LoginDetailId;
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = model.UserId;
                cmd.Parameters.Add("@LoginIp", SqlDbType.NVarChar, 150).Value = VisitorsIPAddr;
                cmd.Parameters.Add("@LogoutIp", SqlDbType.NVarChar, 150).Value = model.LogoutIp;
                cmd.Parameters.Add("@CreatedBy", SqlDbType.BigInt).Value = model.CreatedBy;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                message = "Success";
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            obj.Response = ret;
            return obj;

        }

        public ResponseModel InsertRole(RoleModel model)
        {
            try
            {
              SqlCommand  cmd1 = new SqlCommand("InsertRole_Sp", con);
                cmd1.Parameters.Add("@RoleName", SqlDbType.VarChar, 400).Value = model.RoleName;
                cmd1.Parameters.Add("@OrgId", SqlDbType.VarChar, 400).Value = model.CreatedByOrg_Id;
                cmd1.Parameters.Add("@CreatedBy", SqlDbType.BigInt).Value = model.CreatedByUser_Id;
                cmd1.Parameters.Add("@Result_RoleId", SqlDbType.BigInt).Direction = ParameterDirection.Output;
                cmd1.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd1.ExecuteNonQuery();
                obj.Response = Convert.ToInt32(cmd1.Parameters["@Result_RoleId"].Value.ToString());
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }

            return obj;
        }

        public List<RoleModel> GetRoleByOrgId(credentialModel mymodel)
        {
            List<RoleModel> model = new List<RoleModel>();
            try
            {
                SqlCommand cmd = new SqlCommand("GetRoleByOrgId_Sp", con);
                cmd.Parameters.Add("@OrgId", SqlDbType.BigInt).Value = mymodel.Id;
                cmd.Parameters.Add("@RoleName", SqlDbType.VarChar).Value = mymodel.RoleName;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.Add(new RoleModel
                    {
                        RoleId = Convert.ToInt32(dr["RoleId"]),
                        RoleName = dr["RoleName"].ToString(),
                        CreatedByOrg_Id = Convert.ToInt64(dr["OrgId"])
                    });
                }
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            return model;
        }

        public ResponseModel ActiveOrganization(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("ActiveOrganization_Sp", con);
                cmd.Parameters.Add("@OrgId", SqlDbType.BigInt).Value = model.OrgId;
                cmd.Parameters.Add("@ModifiedBy", SqlDbType.BigInt).Value = model.UserId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                ret = cmd.ExecuteNonQuery();
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            obj.Response = ret;
            return obj;
        }

        public ResponseModel ActiveUserInfo(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("ActiveUserInfo_Sp", con);
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = model.UserId;
                cmd.Parameters.Add("@ModifiedBy", SqlDbType.BigInt).Value = model.UserId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                ret = cmd.ExecuteNonQuery();
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            obj.Response = ret;
            return obj;
        }
    }
}