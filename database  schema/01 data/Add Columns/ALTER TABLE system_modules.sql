SELECT IF (fn_IsColumnExists('system_modules', 'ParentId') = 1,
	ALTER TABLE system_modules ADD ParentId INT DEFAULT NULL);