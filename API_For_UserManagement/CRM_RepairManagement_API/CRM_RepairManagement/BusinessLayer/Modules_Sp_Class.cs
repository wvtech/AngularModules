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
    public class Modules_Sp_Class
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RepairManagementConnectioin"].ToString());//Connection Class Object
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        ResponseModel obj = new ResponseModel();
        int ret = 1;

        public List<ModulesModel> GetAllModuleListByOrgId(ParameterModel mymodel)
        {
            List<ModulesModel> model = new List<ModulesModel>();
            try
            {
                SqlCommand cmd = new SqlCommand("GetAllModuleListByOrgId_Sp", con);
                cmd.Parameters.Add("@Org_Id", SqlDbType.NVarChar, 150).Value = mymodel.Id;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    model.Add(new ModulesModel
                    {
                        ModuleId = Convert.ToInt32(dr["ModuleId"]),
                        ModuleName = dr["Module_Name"].ToString(),
                        CreatedByOrg_Id = Convert.ToInt64(dr["CreatedBy"]),
                       
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
    }
}