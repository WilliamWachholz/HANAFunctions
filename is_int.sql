CREATE FUNCTION is_int(in i_input varchar(100))
RETURNS is_int INT
LANGUAGE SQLSCRIPT
AS

v_tmp integer;

BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
is_int := 0;
END;

select cast(coalesce(:i_input, 0) as int) into v_tmp from dummy;

is_int := 1;

END;
