using CRM_RepairManagement.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CRM_RepairManagement.BusinessLayer
{
    public class UserInfo_Sp_Class
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RepairManagementConnectioin"].ToString());//Connection Class Object
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        ResponseModel obj = new ResponseModel();
        int ret = 1;
       
        public List<UserProfileModel> GetUserByUserId(ParameterModel mymodel)
        {
            List<UserProfileModel> model = new List<UserProfileModel>();
            try
            {
                cmd = new SqlCommand("GetUserByUserId_Sp", con);
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = mymodel.Id;
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
                        UserId = Convert.ToInt32(dr["UserId"]),
                        OrgId = Convert.ToInt32(dr["OrgId"]),
                        OrgName = dr["OrgName"].ToString(),
                        OrgStreet = dr["OrgStreet"].ToString(),
                        OrgCity = dr["OrgCityName"].ToString(),
                        OrgState = dr["OrgStateName"].ToString(),
                        UserFirstName = dr["FirstName"].ToString(),
                        UserLastName = dr["LastName"].ToString(),
                        UserStreet = dr["Street"].ToString(),
                        UserCityId = Convert.ToInt32(dr["CityId"]),
                        UserStateId = Convert.ToInt32(dr["StateId"]),
                        UserCity = dr["CityName"].ToString(),
                        UserState = dr["StateName"].ToString(),
                        ProfilePhoto = dr["ProfilePhoto"].ToString(),
                        RoleId = Convert.ToInt32(dr["RoleId"]),
                        RoleName = dr["RoleName"].ToString(),
                        UserName = dr["UserName"].ToString(),
                        UserEmailId = dr["EmailId"].ToString(),
                        UserMobileNo = dr["MobileNo"].ToString(),
                        Password = PasswordSecurity.Decrypt(dr["Password"].ToString()),  //Password Decryption
                        CreatedBy = Convert.ToInt32(dr["CreatedBy"]),
                        CreatedOn = Convert.ToDateTime(dr["CreatedOn"]),
                        ModifiedBy = Convert.ToInt32(dr["ModifiedBy"]),
                        ModifiedOn = Convert.ToDateTime(dr["ModifiedOn"]),
                        IsActive = Convert.ToBoolean(dr["IsActive"]),
                        IsDelete = Convert.ToBoolean(dr["IsDelete"]),
                        RegisteredAs = dr["RegisteredAs"].ToString()
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

        public List<UserInRole> GetUsersByOrgIdAndRoleId(credentialModel model)
        {
            List<UserInRole> UserInRole = new List<UserInRole>();
            try
            {
                cmd = new SqlCommand("GetUsersByOrgIdAndRoleId_Sp", con);
                cmd.Parameters.Add("@OrgId", SqlDbType.BigInt).Value = model.OrgId;
                cmd.Parameters.Add("@RoleId", SqlDbType.BigInt).Value = model.RoleId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    UserInRole.Add(new UserInRole
                    {
                        UserId = Convert.ToInt32(dr["UserId"]),
                        OrgId = Convert.ToInt32(dr["OrgId"]),
                        FirstName = dr["FirstName"].ToString(),
                        LastName = dr["LastName"].ToString(),
                        EmailId = dr["EmailId"].ToString()                      
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
            obj.Response = ret;
            return UserInRole;
        }

        public ResponseModel ReactiveUser(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("ReactiveUser_Sp", con);
                cmd.Parameters.Add("@OrgId", SqlDbType.BigInt).Value = model.OrgId;
                cmd.Parameters.Add("@EmailId", SqlDbType.VarChar).Value = model.EmailId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                dr = cmd.ExecuteReader();
                
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

        public ResponseModel ActiveUser(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("ActiveUser_Sp", con);
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = model.UserId;
                
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                dr = cmd.ExecuteReader();

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

        public ResponseModel InActiveUser(credentialModel model)
        {
            try
            {
                cmd = new SqlCommand("InActiveUser_Sp", con);
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = model.UserId;
               
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                dr = cmd.ExecuteReader();

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

        public ResponseModel SendRequestToReactiveUser(credentialModel model)
        {
            try
            {
                MailHelper obj = new MailHelper();
                obj.SendEmail("","To Reactivate User","");                
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