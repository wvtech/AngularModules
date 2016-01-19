# AngularModules
## Fully Angular Based User Management Module

This User Mangement Module is written in pure AngularJS and uses Restfull API calls for getting the data and perform all CRUD operations.

## Features:

 * User Registration and Login/Logout funtionality.
 * There is a Super User who can add Admin Users and then that Admin user can add users in their Organization.
 * Super user has defined basic user types and add users of that type but Admin user can also add/defined user 
   type for their Organization.
 * Super User can manage all users (As Edit/Delete user profile and ReActive/DeActive user accounts.)
 * Admin user can manage users of their Organizations.
 * Unique Email Address and UserName feature when Add/Register a user.
 * Set permissions for usertype and also for individual users to access a module in application and having Add,
   Edit, Delete & Finalize rights for that module.
 * All Database operations are performed in different API project for fast access.
 * Use local storage to store user data on client side instead of on server.
 
## Motivation

As User Management module is required in every type of projects, we have prepaired a complete module so that user can easily 
embed our code in his project and continue with further requirements.

## Usage with demo application:
 Can see full usage of this module and understand how to access and use it.Follow the link (http://103.231.44.154:9999/)
 (First Register yourself as an Organization then login in the module and then perform different operations as Add Users
 in your Organization , Edit Your Profile , Manage Your User's profile , Set Permissions For Users , Active Or InActive
 Users in your organization.)
 
## Download Complete Code with RESTfull APIs.
 Can download our complete code along with APIs from link (https://github.com/wvtech/AngularModules).


## API Reference
 (http://103.231.44.154:6542/)
 
 ## How To Add/Use this module in Your project.
 
 * Download the zip from the link (https://github.com/wvtech/AngularModules) and unzip it in your system.
 * First add all the views in your project from (\UserManagementModule\HtmlTemplates)
   HtmlTemplates folder inside UserManagementModule Folder Or Add the entire Folder 'HtmlTemplates' in your project.
 * Add the folders as Anguler_Files, Scripts, CSS in your project to get the required Angular files as Controller, 
   Services and Directives and CSS .
 * If you have a layout page then add the content of our module's layout page from the file named '_Layout' which you 
   get inside Views folder as (UserManagementModule\Views\Layouts).This content is added on layout page to apply on all 
   pages and calls all angular files , css, and required JS files.
 * Add the Account controller and its views also -
   Add account controller from folder (UserManagementModule\Controllers) and Views from (UserManagementModule\Views\Account).
   it is suggested to add Account Controller as it is and 'Account' folder from (UserManagementModule\Views\Account) to get 
   all view of account controller.(Please change the namespace in Account controller as it formed as name of your project.Controller)
 * Update your project's Route config file and set Login.cshtml page as first view to open when execute the application .Add
   routes.MapRoute(
                name: "Default",
                url: "{*url}",
                defaults: new { controller = "Account", action = "Login", id = UrlParameter.Optional }
            );
            
      in RouteConfig.cs file inside 'App_Start' folder.
  *  As this entire module uses API for performing all operations as Insert ,Update ,Delete or get the data.So now you have to
     Open the folder 'API_For_UserManagement' which you get inside the unzipped folder,you have downloaded.Execute this API
     project using its .sln and get the API URL. Update this API URL in 'GetURL_Services' file inside (UserManagementModule\Anguler_Files)
     as 
     var custurl = "http://localhost:51156/"; // Change '51156' with your API project's port no.
  * We have also provided our database script with all Tables, Stored procedures, and Functions for your convinience.Run this script 
    in your database and get all essentials for executing the module's API.
  * Finally in API project's (API_For_UserManagement)'s  WebConfig file change the connection string according to your Database Name
    and Credential.
