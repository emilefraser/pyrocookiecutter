CREATE PROCEDURE dbo.InsertScore (
	@testid int,
	@studentid int,
	@score decimal (5,2))
as
begin
insert into [Stats].[Scores](testid,studentid,score)
values (@testid, @studentid,@score)
end