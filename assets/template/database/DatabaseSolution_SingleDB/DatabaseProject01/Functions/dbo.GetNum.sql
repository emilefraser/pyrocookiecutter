


CREATE   FUNCTION [dbo].[GetNum] (
	@num AS BIGINT
)
RETURNS BIGINT
AS
BEGIN
RETURN((
select num from dbo.GetNum('0','100')
where num = @num
))
END