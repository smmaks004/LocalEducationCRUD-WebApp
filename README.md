# About project
Local-Education-CRUD is my small project, a web application using a local database to manage student, teacher, course, assignment and submission data in a local database. It supports CRUD operations.


# Project Setup
I wrote all the code and ran the local database through the **Visual Studio 2022** application, so further explanations will rely on that application.

1. Install the list of required [`NuGet packages`](#Used-NuGet-Packages)
2. Create the database   
   2.1 If you want, you can fill the database with data from the [file](DatabaseQuery.sql) I have attached.   
   2.2  If you need to drop the entire table in future, here it is   
   ```
    DROP TABLE Submission
    DROP TABLE Assignment
    DROP TABLE Course
    DROP TABLE Student
    DROP TABLE Teacher
   ```
4. Go to the `appsettings.json` file and insert your local database ConnectionString to the **"MyConn"** field



## Used NuGet Packages
For this project, I used the following NuGet extensions:
1. **Required Packages**    
    1.1. Microsoft.EntityFrameworkCore.SqlServer    
    1.2. Microsoft.EntityFrameworkCore.Tools    
    1.3. Microsoft.AspNetCore.Identity.EntityFrameworkCore
2. **Optional but Useful Packages**    
    2.1. Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore    
    2.2. Microsoft.AspNetCore.Identity.UI    
    2.3. Microsoft.VisualStudio.Web.CodeGeneration.Design


