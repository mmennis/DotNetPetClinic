
# ASP.NET MVC3 PetClinic Demo application

 * This sample application is used primarily for testing.


## General project stuff:

 * This application shows a simple ASP.NET MVC application and some simple ASP.NET features.
   * **Code First
   * **Entity Framework

## Installation
 
  * Download the code from github in read-only.
  * It's probably best to use a Microsoft IDE like Visual Studio express or the paid for versions. The tools make it easier and it's easier to find things.  Open the solution by pointing the IDE at the sln file.
  * Edit the PetClinicContext.cs file under Models to set the number of owners and vets to be created.  Large numbers can take a couple of minutes to complete so keep the numbers under 100 for basic demonstration purposes.
  * Edit the Web.Config.xml file with the correct database connection information.  The default will use a local SQLExpress database.  The other example is for a SQLServer 2008 database instance called petclinic with user login petclinic/petclinc.
  * If you're using SQLServer the login user you create should have database creation permissions.  I recommend using SQLServer authentication but that was what worked for me.
  * Deploy the application to the IIS server.  The ID comes with a "Build deployment package" context menu and I used that.  
  * Once the deployment package is complete edit the Parameters.xml file generated near the zipfile to set the application name (just remove the _deploy).
  * Run the DotNetPetClinic.deploy.cmd (with /Y flag) to deploy to your local IIS server. (.Net 4.0 application pools are required).
  * Start up the IIS application server ("iisreset /restart").
  * Go to the Home page and click on "Owners" link.  This should cause the application to drop and create teh database and populate the database tables with sample data.
  * Once the page refreshes and shows the list of owners and pets you can shutdown IIS.
  * Go to the application root for DotNetPetClinic (or whatever you called it) in the IIS wwwroot directory and edit the Web.Config.xml file.  Change the "DropAndCreateDatabaseOnStartup" app setting from "1" to "0" to prevent the application from re-populating the database on every restart.

