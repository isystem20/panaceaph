INSERT INTO system_services(Code, Name, Description, VersionNo, Active)
SELECT tmp.Code, tmp.Name, '', 1, 1
FROM (
	SELECT 'Human Resource' AS Code, 'Human Resource Information System' AS Name
	
	UNION ALL
	
	SELECT 'Payroll' AS Code, 'Payroll Management System' AS Name
	
	UNION ALL
	
	SELECT 'Time Keeping' AS Code, 'Time Keeping System' AS Name

) tmp
WHERE NOT EXISTS(SELECT Id FROM system_services WHERE Code = tmp.Code);

ALTER TABLE system_modules ADD COLUMN Parent VARCHAR(500);
ALTER TABLE system_modules ADD COLUMN views VARCHAR(500);

INSERT INTO system_modules(Code, Name, ServiceId, Parent, views, Description, VersionNo, Active)
SELECT tmp.Code, tmp.Name, 1, tmp.Parent, tmp.views, '', 1, 1
FROM (
	
	
	SELECT 'Employee' AS Code, 'Employee' AS Name, '' AS Parent, '' AS views
	UNION ALL
	SELECT 'Masterlist' AS Code, 'Masterlist' AS Name, 'Employee' AS Parent, 'hr/employees' AS views
	UNION ALL
	SELECT 'Positions' AS Code, 'Positions' AS Name, 'Employee' AS Parent, 'hr/positions' AS views
	UNION ALL
	SELECT 'Types' AS Code, 'Types' AS Name, 'Employee' AS Parent, 'hr/employment-types' AS views
	UNION ALL	
	SELECT 'Ranks' AS Code, 'Ranks' AS Name, 'Employee' AS Parent, 'hr/Ranks' AS views
	UNION ALL	
	SELECT 'Groups' AS Code, 'Groups' AS Name, 'Employee' AS Parent, 'hr/groups' AS views
	
    
) tmp
WHERE NOT EXISTS(SELECT Id FROM system_modules WHERE Code = tmp.Code);

CREATE TABLE IF NOT EXISTS system_user_modules_2 (
	UserId INT NOT NULL
	, CompanyId INT
	, ModuleId INT
	, AccessRights VARCHAR(500)
);

SELECT @UserId = 1;
SELECT sm.Name, sm.Parent, sm.Views
FROM system_modules sm
	INNER JOIN system_user_modules_2 sum ON sum.ModuleId = sm.Id
WHERE sum.UserId = @UserId


INSERT INTO system_user_modules_2(UserId, CompanyId, ModuleId)
SELECT  tmp.UserId, tmp.CompanyId, tmp.ModuleId
FROM (
		SELECT 1 AS UserId, 1 AS CompanyId, 1 AS ModuleId
		UNION ALL
		SELECT 1, 1, 2
		UNION ALL
		SELECT 1, 1, 3
		UNION ALL
		SELECT 1, 1, 4
		UNION ALL
		SELECT 1, 1, 5
		UNION ALL
		SELECT 1, 1, 6
		UNION ALL
		SELECT 1, 1, 7
	) tmp WHERE NOT EXISTS (SELECT UserId FROM system_user_modules_2 WHERE ModuleId = tmp.ModuleId AND UserId = tmp.UserId = CompanyId = tmp.CompanyId)
