<?

class pagination
{
	public $page,$itemPerPage,$itemTable;
	
	public $itemsCount;
	
	public function build($page,$itemPerPage,$itemTable)
	{
		$this->page = intval(mysql_real_escape_string($page));
		$this->itemPerPage = $itemPerPage;
		$this->itemTable = $itemTable;
	}
	public function getSwitcher()
	{
		$this->countItems();
		$totalPages = intval(($this->itemsCount-1) / $this->itemPerPage)+1;
		if($this->page <= 0)
		{
			for($i=1;$i<=$totalPages;$i++)
			{
				echo '<li class="page-item';
				if($i == 1)
				{
					echo ' active ';
				}
				echo '"><a class="page-link" href="/GREEN_CAT/page/'.$i.'">'.$i.'</a></li>';
			}
		}
		else
		{
			for($i=1;$i<=$totalPages;$i++)
			{
				echo '<li class="page-item';
				if($i == $this->page)
				{
					echo ' active ';
				}
				echo '"><a class="page-link" href="/GREEN_CAT/page/'.$i.'">'.$i.'</a></li>';
			}
		}
		
		
	}
	public function genSQL()
	{
		$this->countItems();
		$totalPages = intval(($this->itemsCount-1) / $this->itemPerPage)+1;
		$start = $this->page * $this->itemPerPage - $this->itemPerPage;
		
		$sql = "SELECT * FROM ".$this->itemTable." ORDER BY id DESC LIMIT ".$start.",".$this->itemPerPage;
		return $sql;
	}
	
	private function countItems()
	{
		$db = new DbAct();
		$sql = "SELECT * FROM ".$this->itemTable;
		$query = $db->run_query($sql); 
		$itemsCount = mysql_num_rows($query); //სულ არსებული პოსტების რაოდენობა ბაზაში
		
		$this->itemsCount = $itemsCount;
	}
}

?>