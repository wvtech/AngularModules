﻿using System.Web;
using System.Web.Mvc;

namespace CRM_RepairManagement
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}