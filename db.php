<?
class DbAct
{
	private $host = 'localhost', $user = 'ks2', $pass = 'N12345678', $dbname = 'green_cat';
	public function __construct()
	{
		$db = mysql_connect($this->host,$this->user,$this->pass) or die(mysql_error());
		mysql_select_db($this->dbname,$db);
		mysql_set_charset("UTF8", $db);
	}
	
	public function showData()
	{
		echo 'host: '.$this->host;
	}
	
	public function run_query($sql)
	{
		$query = mysql_query($sql) or die(mysql_error());
		
		return $query;
	}
}

?>