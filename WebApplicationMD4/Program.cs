using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using WebApplicationMD4.Data;
using WebApplicationMD4.ModelsDB;
//using WebApplicationMD4.ModelsDB;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container. (Was a 'DefaultConnection') 
var connectionString = builder.Configuration.GetConnectionString("MyConn") ?? throw new InvalidOperationException("Connection string 'MyConn' not found.");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));


// My Connection string
var connectionString2 = builder.Configuration.GetConnectionString("MyConn") ?? throw new InvalidOperationException("Connection string 'MyConn' not found.");
builder.Services.AddDbContext<AspdatabaseContext>(options =>    //
    options.UseSqlServer(connectionString2));                   //
builder.Services.AddDatabaseDeveloperPageExceptionFilter();



builder.Services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
    .AddEntityFrameworkStores<ApplicationDbContext>();
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseMigrationsEndPoint();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();

app.Run();
