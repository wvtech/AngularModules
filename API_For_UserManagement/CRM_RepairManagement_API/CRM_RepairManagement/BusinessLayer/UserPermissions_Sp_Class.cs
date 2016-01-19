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
    public class UserPermissions_Sp_Class
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RepairManagementConnectioin"].ToString());//Connection Class Object
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        ResponseModel obj = new ResponseModel();
        int ret = 1;

        public ResponseModel InsertUserPermissions(List<PermissionModel> model)
        {

            try
            {

                for (int i = 0; i < model.Count; i++)
                {
                    cmd = new SqlCommand("InsertUserPermissions_Sp", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Org_Id", SqlDbType.BigInt).Value = model[i].Org_Id;
                    cmd.Parameters.Add("@U_RoleId", SqlDbType.BigInt).Value = model[i].U_RoleId;
                    cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = model[i].UserId;
                    cmd.Parameters.Add("@ModuleId", SqlDbType.BigInt).Value = model[i].ModuleId;
                    cmd.Parameters.Add("@All", SqlDbType.Bit).Value = model[i].All;
                    cmd.Parameters.Add("@Add", SqlDbType.Bit).Value = model[i].Add;
                    cmd.Parameters.Add("@Edit", SqlDbType.Bit).Value = model[i].Edit;
                    cmd.Parameters.Add("@Delete", SqlDbType.Bit).Value = model[i].Delete;
                    cmd.Parameters.Add("@View", SqlDbType.Bit).Value = model[i].View;
                    cmd.Parameters.Add("@ReActivate", SqlDbType.Bit).Value = model[i].ReActivate;
                    cmd.Parameters.Add("@Print", SqlDbType.Bit).Value = model[i].Print;
                    cmd.Parameters.Add("@Finalize", SqlDbType.Bit).Value = model[i].Finalize;
                    cmd.Parameters.Add("@ModifiedBy", SqlDbType.BigInt).Value = model[i].ModifiedBy;
                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    cmd.ExecuteNonQuery();
                    if (con.State == ConnectionState.Open)
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


        public List<PermissionModel> GetPermissionsByUserRoleOrUserId(credentialModel mymodel)
        {
            List<PermissionModel> model = new List<PermissionModel>();
            try
            {
                SqlCommand cmd = new SqlCommand("GetPermissionsByUserRoleOrUserId_Sp", con);
                cmd.Parameters.Add("@Org_Id", SqlDbType.BigInt).Value = mymodel.OrgId;
                cmd.Parameters.Add("@U_RoleId", SqlDbType.BigInt).Value = mymodel.RoleId;
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = mymodel.UserId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.Add(new PermissionModel
                    {
                        Org_Id = Convert.ToInt32(dr["Org_Id"]),
                        U_RoleId = Convert.ToInt32(dr["U_RoleId"]),
                        UserId = Convert.ToInt32(dr["UserId"]),
                        ModuleId = Convert.ToInt32(dr["ModuleId"]),
                        All = Convert.ToBoolean((dr["All"])),
                        Add = Convert.ToBoolean((dr["Add"])),
                        Edit = Convert.ToBoolean((dr["Edit"])),
                        Delete = Convert.ToBoolean((dr["Delete"])),
                        View = Convert.ToBoolean((dr["View"])),
                        ReActivate = Convert.ToBoolean((dr["ReActivate"])),
                        Print = Convert.ToBoolean((dr["Print"])),
                        Finalize = Convert.ToBoolean((dr["Finalize"])),
                        ModifiedBy = Convert.ToInt32(dr["ModifiedBy"]),
                        ModifiedOn = Convert.ToDateTime(dr["Modifiedon"])
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

        public PermissionModel DashBoardAccessibility(credentialModel model)
        
        {
            PermissionModel Modules = new PermissionModel();
            SqlCommand cmd = new SqlCommand("DashboardAccessibility_Sp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.Add("@U_RoleId", SqlDbType.BigInt).Value = model.RoleId;
                cmd.Parameters.Add("@Org_Id", SqlDbType.BigInt).Value = model.OrgId;
                cmd.Parameters.Add("@UserId", SqlDbType.BigInt).Value = model.UserId;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    if (dr["Module_Name"].ToString() == "User Management" && (Convert.ToBoolean(dr["All"]) == true || Convert.ToBoolean(dr["View"]) == true))
                        Modules.UserManagement = true;
                    if (dr["Module_Name"].ToString() == "Property Level" && (Convert.ToBoolean(dr["All"]) == true || Convert.ToBoolean(dr["View"]) == true))
                        Modules.PropertyLevel = true;
                    if (dr["Module_Name"].ToString() == "Company Level" && (Convert.ToBoolean(dr["All"]) == true || Convert.ToBoolean(dr["View"]) == true))
                        Modules.CompanyLevel = true;
                    if (dr["Module_Name"].ToString() == "Tally Marketing" && (Convert.ToBoolean(dr["All"]) == true || Convert.ToBoolean(dr["View"]) == true))
                        Modules.TallyMarketing = true;
                    if (dr["Module_Name"].ToString() == "Capital Project" && (Convert.ToBoolean(dr["All"]) == true || Convert.ToBoolean(dr["View"]) == true))
                        Modules.CapitalProject = true;
                    if (dr["Module_Name"].ToString() == "Work Order" && (Convert.ToBoolean(dr["All"]) == true || Convert.ToBoolean(dr["View"]) == true))
                        Modules.WorkOrder = true;

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
            return Modules;
        }


        public PermissionModel GetModuleAccessPermissions(credentialModel mymodel)
        {
            PermissionModel model = new PermissionModel();
            try
            {
                SqlCommand cmd = new SqlCommand("GetModuleAccessPermissions_Sp", con);
                cmd.Parameters.Add("@Org_Id", SqlDbType.BigInt).Value = mymodel.OrgId;
                cmd.Parameters.Add("@U_RoleId", SqlDbType.BigInt).Value = mymodel.RoleId;
                cmd.Parameters.Add("@UserID", SqlDbType.BigInt).Value = mymodel.UserId;
                cmd.Parameters.Add("@ModuleId", SqlDbType.BigInt).Value = mymodel.ModuleId;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.All = Convert.ToBoolean((dr["All"]));
                    model.Add = Convert.ToBoolean((dr["Add"]));
                    model.Edit = Convert.ToBoolean((dr["Edit"]));
                    model.Delete = Convert.ToBoolean((dr["Delete"]));
                    model.View = Convert.ToBoolean((dr["View"]));
                    model.ReActivate = Convert.ToBoolean((dr["ReActivate"]));
                    model.Print = Convert.ToBoolean((dr["Print"]));
                    model.Finalize = Convert.ToBoolean((dr["Finalize"]));
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
    }
}