# Universal Builders

A real estate website built in ASP.NET Web Forms (C#) with SQL Server. I built it with my teammates as our final-year project for the BCA (Bachelor of Computer Applications) degree in 2021.

The site has four sides: users looking to buy, builders, dealers (agents) and an admin. It also has a timed property auction.

## What it does

Users
- Register with email verification, then log in (the login page has a custom image captcha).
- Browse and search properties by city, in grid or list view, and open a property's details.
- Save favourites and book a property. Booking pays a token amount through the Paytm gateway (staging environment).
- List their own property for sale.
- Browse dealers and request an appointment with one.
- Take part in the auction: each bid raises the price by 50,000, a countdown runs from the auction's start time, and when it ends the winner gets an email with a link to pay the token amount.
- Contact form and forgot-password email.

Builders and dealers
- Add their own properties, see the bookings on them and edit their profile.
- Builders can delete their listings. Dealers can see appointment requests and reply by email.

Admin
- Manage states and cities, add builders and dealers, and show/hide builders, dealers and properties.
- Add a property to the auction.
- View all bookings and reply to contact-us messages.

All roles sign in through `User/Login.aspx`, which redirects admins, dealers and builders to their own area.

## Stack

- ASP.NET Web Forms, C#, .NET Framework 4.5 (Visual Studio "Web Site" project, no `.sln`)
- SQL Server LocalDB (`(localdb)\v11.0`) with the database file in `App_Data`
- ADO.NET (`SqlConnection`, `SqlDataSource`) for data access
- Paytm payment SDK (`Bin/paytm.dll`) and MSCaptcha (`Bin/MSCaptcha.dll`)
- `System.Net.Mail` over Gmail SMTP for verification, password reset and auction emails
- Bootstrap and jQuery based HTML templates for the front end

## Project structure

```
Admin/      admin pages (AdminMaster.master)
Builder/    builder pages (BuilderMaster.master)
Dealer/     dealer pages (DealerMaster.master)
User/       public site, login, search, booking, auction (UserMaster.master)
App_Code/   captcha helpers
App_Data/   SQL Server .mdf/.ldf files
Bin/        third-party DLLs
Web.config  connection strings
```

`Documentation_Universal_Builder.docx` has the original project report (aims, scope and planned features).

## Running it locally

This was built in 2021 with Visual Studio and SQL Server 2012 LocalDB against .NET Framework 4.5. I haven't run it on a current setup.

1. In Visual Studio, use File > Open > Web Site and pick the repo folder. It runs on IIS Express.
2. The connection strings in `Web.config` attach `App_Data\universalbuilders.mdf`, but the file in the repo is `UniversalBuilder.mdf`. Rename the file or update the connection string to match.
3. If you don't have the `v11.0` LocalDB instance, change the data source to `(localdb)\MSSQLLocalDB`.
4. Email and Paytm credentials are hard-coded in the page code-behind files. Replace them with your own to test those flows.

Verification and auction emails link to `http://localhost:42919`, so links only work if the site runs on that port.

## Known limitations

This is a student project and it shows its age. SQL queries are built by string concatenation (open to SQL injection), credentials live in source, and there are no automated tests.
