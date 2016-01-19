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
    public class City_Sp_Class
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RepairManagementConnectioin"].ToString());//Connection Class Object
        SqlDataReader dr = null;
        SqlCommand cmd = null;
        ResponseModel obj = new ResponseModel();
        int ret = 1;
         

        //Data Insert in City Table  
        public ResponseModel InsertCity(CityModel model)
        {  
            try
            {
                cmd = new SqlCommand("InsertCity_Sp", con);
                cmd.Parameters.Add("@CityName", SqlDbType.VarChar, 50).Value = model.CityName;
                cmd.Parameters.Add("@CreatedBy", SqlDbType.BigInt).Value = model.CreatedBy;
                cmd.Parameters.Add("@Result_CityId", SqlDbType.BigInt).Direction = ParameterDirection.Output;
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                obj.Response = Convert.ToInt32(cmd.Parameters["@Result_CityId"].Value.ToString());
               
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
    }
}