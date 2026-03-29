/* How to Think Like the Engine: Big Data Edition
v1.1 - 2024-09-26 - Brent Ozar
https://www.brentozar.com/go/engine

This demo requires:
* Any supported version of SQL Server
* Any Stack Overflow database: https://www.BrentOzar.com/go/querystack
  (the larger the better)

This first RAISERROR is just to make sure you don't accidentally hit F5 and
run the entire script. You don't need to run this:
*/
RAISERROR(N'Oops! No, don''t just hit F5. Run these demos one at a time.', 20, 1) WITH LOG;
GO


/*
License: Creative Commons Attribution-ShareAlike 4.0 (CC BY-SA 4.0)
More info: https://creativecommons.org/licenses/by-sa/4.0/

You are free to:
* Share - copy and redistribute the material in any medium or format
  for any purpose, even commercially.
* Adapt - remix, transform, and build upon the material for any 
  purpose, even commercially.

Under the following terms:
* Attribution - You must give appropriate credit, provide a link to 
  the license, and indicate if changes were made. You may do so in
  any reasonable manner, but not in any way that suggests the 
  licensor endorses you or your use.
* ShareAlike - If you remix, transform, or build upon the material,
  you must distribute your contributions under the same license as 
  the original.
* No additional restrictions — You may not apply legal terms or 
  technological measures that legally restrict others from doing 
  anything the license permits.

*/


USE StackOverflow2010;
GO
/* This stored procedure drops all nonclustered indexes,
   but leaves the clustered indexes in place: */
DropIndexes;
GO


/* Meet the Posts table, which has questions & answers: */
SELECT TOP 100 * FROM dbo.Posts;

/* If I want to find all of my own posts:

(Run this in another window:) */
EXEC sp_BlitzFirst @Seconds = 180, @ExpertMode = 1;

/* Turn on actual execution plans and: */
SET STATISTICS IO ON;

SELECT *
	FROM dbo.Posts
	WHERE OwnerUserId = 26837;
GO

/* Review:
* The query isn't done yet
* The size of the table
* The size of the server's memory
* The speed of the server's storage (and CrystalDiskMark)
* Logical reads
* Table scan in the plan
* Amount of reads in sp_BlitzFirst
* The wait stats in sp_BlitzFirst and the actual plan

But now that it's cached, will it go faster?
Run it again, with sp_BlitzFirst in another window. */

SELECT *
	FROM dbo.Posts
	WHERE OwnerUserId = 26837;
GO

/* That's why adding just SOME memory doesn't fix PAGEIOLATCH waits:
https://www.brentozar.com/archive/2022/07/why-adding-some-memory-doesnt-fix-all-caching-problems/

SQL Server Enterprise Edition does have a
cool trick to help if multiple queries are
hitting the same table at the same time:
https://www.mssqltips.com/sqlservertip/4472/sql-server-enterprise-advanced-scan-aka-merrygoround-scan/

But we're still going to be stuck scanning
the entire table, every time, even when some
(but not all) of the table is cached.


Can we fix that by:
* Selecting less columns?
* Selecting less rows?
*/
SELECT *
	FROM dbo.Posts
	WHERE OwnerUserId = 26837;
GO
/* While discussing rows, start creating an index
in another window since it takes 3-4 minutes: */
CREATE INDEX OwnerUserId
	ON dbo.Posts(OwnerUserId);
GO


/* It's generally a good idea to index
any foreign key type columns when you're
just getting started. (That's only the
starting line, though, not the finish line,
and you may need to drop those later.)


Try the query again while monitoring it
with sp_BlitzFirst in another window:
*/

SELECT *
	FROM dbo.Posts
	WHERE OwnerUserId = 26837;
GO
/* Review:
* Logical reads
* Table scan in the plan
* The size of the table
* Amount of reads in sp_BlitzFirst
* We're still selecting *: all columns, all rows
* Key lookups in the plan
*/


/* That plan doesn't have many key lookups
because I haven't asked that many questions
or posted that many answers.

But what about someone who has - Jon Skeet? */
SELECT *
	FROM dbo.Posts
	WHERE OwnerUserId = 22656;
GO
/* Review:
* Query duration
* Logical reads (compared to the table scan)
* Wait stats in the query plan
* We're still selecting *: all columns, all rows
* Key lookups in the plan


When you've got big data, and big outliers,
index tuning helps reduce reads and read waits.
*/


/* But indexes aren't just about reducing reads:
they're also about reducing WRITES.

Say we want to find the most-seen posts.
Start 4-minute sp_BlitzFirst sampling, then:*/
SELECT TOP 250 *
	FROM dbo.Posts
	ORDER BY ViewCount DESC;

/* While it runs, look at the estimated plan
in another window and discuss:
* Max memory grant available
* How much data we're trying to sort
* How CPU isn't 100% (and why that's bad)
* How multiple queries affect the server overall

When it's done, note:
* The actual plan's memory grant
* The sort's memory usage
* The amount of data written to TempDB
* How slow the TempDB stalls are

An index on ViewCount would help this situation, but:
* Note how wide the table is
* It's hard to predict what users will query


At the end of the day, big data needs fast storage,
or else you spend a lot of time waiting on reads & writes.
*/

/* To learn more about how the SQL Server engine works:
https://www.brentozar.com/go/engine */