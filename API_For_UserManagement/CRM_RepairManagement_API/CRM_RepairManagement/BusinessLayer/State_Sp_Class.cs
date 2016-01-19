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
    public class State_Sp_Class
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RepairManagementConnectioin"].ToString());//Connection Class Object
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        ResponseModel obj = new ResponseModel();
        int ret = 1;
        string message=string.Empty;

        //Data Insert in State Table  
        public ResponseModel InsertState(StateModel model)
        {
            string strResultState = "";
            try
            {
                cmd = new SqlCommand("InsertState_Sp", con);
                cmd.Parameters.Add("@StateName", SqlDbType.VarChar, 50).Value = model.StateName;
                cmd.Parameters.Add("@CreatedBy", SqlDbType.BigInt).Value = model.CreatedBy;
                cmd.Parameters.Add("@Result_StateId", SqlDbType.BigInt).Direction = ParameterDirection.Output;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                strResultState = cmd.Parameters["@Result_StateId"].Value.ToString();
                message = "Success";
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            catch (Exception ex)
            {
                obj.Message = ex.Message;
                ret = 0;
            }
            obj.Response = Convert.ToInt32(strResultState);
            return obj;
        }
    }
}