<?php

if (__FILE__ == $_SERVER['SCRIPT_FILENAME']) header("Location: /main/home/?kitty=meow");

$Config = array();

// Server Database
$Config['database'] = array();
$Config['database']['hostname'] = 'localhost';
$Config['database']['username'] = 'ug_ucp';
$Config['database']['password'] = 'securepassword';
$Config['database']['database'] = 'ug_ucp';
$Config['database']['logshost'] = 'localhost';
$Config['database']['logsusername'] = 'ug_logs';
$Config['database']['logspassword'] = 'securepassword';
$Config['database']['logsdatabase'] = 'ug_logs';

$Config['SMTP'] = array();
$Config['SMTP']['hostname'] = 'mail.unitedgaming.org';
$Config['SMTP']['port'] = 25; //25
$Config['SMTP']['username'] = 'noreply@unitedgaming.org';
$Config['SMTP']['password'] = 'emailpassword';
$Config['SMTP']['from'] = 'noreply@unitedgaming.org';
$Config['SMTP']['name'] = "UnitedGaming";

$Config['server'] = array();
$Config['server']['hostname'] = 'server.unitedgaming.org';
$Config['server']['username'] = 'website';
$Config['server']['password'] = 'serverpassword';
$Config['server']['hashkey'] = 'wedorp';
$Config['server']['superSalt'] = "Ibeforeknowno";
$Config['server']['donkey'] = '61e55578ef9402c969fd802d4499f66d0c9ef602';


/*$MySQLConn = @mysql_connect($Config['database']['hostname'], $Config['database']['username'], $Config['database']['password']);
if (!$MySQLConn) {
	$_SESSION['errno'] = 2;
	header("Location: /ucp/login/");
}
$selectdb = @mysql_select_db($Config['database']['database'], $MySQLConn);*/
?>
