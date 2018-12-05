DROP PROCEDURE IF EXISTS usp_access_rights;
DELIMITER $$
CREATE PROCEDURE usp_access_rights(IN user_id INT)
BEGIN
	SELECT sm.name, sm.parent, sm.views AS view, ss.Name AS service, ss.Code AS service_code
	FROM system_modules sm
		INNER JOIN system_user_modules_2 sum ON sum.ModuleId = sm.Id
        INNER JOIN system_services ss ON ss.Id = sm.ServiceId
	WHERE sum.UserId = user_id;
END
$$