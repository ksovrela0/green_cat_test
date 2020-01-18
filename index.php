<?
include("db.php");
include("pagination.php");	
$db = new DbAct();	
$pagination = new pagination();
$itemPerPage = 1;
$itemsTable = 'news';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>
	<?
	
	if(isset($_GET['id']))
	{
		$id = intval(mysql_real_escape_string($_GET['id']));
		if(!empty($id))
		{
			$sql = "SELECT * FROM news WHERE id='".$id."'";
			$query = $db->run_query($sql);
			$row = mysql_fetch_array($query);
			echo $row['title'];
		}
	}
	else
	{
		echo 'სიახლეები';
	}
	?>
	</title>

    <link rel="stylesheet" href="https://takidageorgia.com/GREEN_CAT/assets/css/min/bootstrap.min.css" media="all" >
    <link rel="stylesheet" href="https://takidageorgia.com/GREEN_CAT/assets/font/iconfont/iconstyle.css" media="all" >
    <link rel="stylesheet" href="https://takidageorgia.com/GREEN_CAT/assets/font/font-awesome/css/font-awesome.css" media="all" >
    <link rel="stylesheet" href="https://takidageorgia.com/GREEN_CAT/assets/css/main.css" media="all"  id="maincss">
</head>
<body>
	
<div class="pre-loader">
  <div class="loading-img"></div>
</div>
<!--header here-->

<?
if(!isset($_GET['id']))
{
?>
	<div class="banner white">
	<div class="container">
		<div class="section-title center">
			<h3>სიახლეები</h3>
		</div>
		<div class="row item">
		<?
			if(!isset($_GET['page']))
			{
				$sql = "SELECT * FROM news ORDER BY id DESC LIMIT 1";
				$query = $db->run_query($sql);
				$row = mysql_fetch_array($query);
				$pagination->build(0,$itemPerPage,$itemsTable);
				do
				{
			
			
		?>
					<div class="col-md-6 col-md-offset-3">
						<div class="item-grid">
							<div class="item-img" style="background-image: url('<? echo $row[m_pic]; ?>');">	
								<div class="item-overlay">
									<a href="/GREEN_CAT/news/<? echo $row[id]; ?>"><span class="icon-binocular"></span></a>
								</div>
							</div>
							<div class="item-desc">
								<div class="item-info">
							
									<h4 class="title"><a href="/GREEN_CAT/news/<? echo $row[id]; ?>"><? echo $row[title]; ?></a></h4>
								</div>
								<div class="item-detail">
									<div class="left">
										<div class="day"><span class="icon-calendar"></span><? echo $row['date']; ?></div>
									</div>
									<div class="right">
										<a href="/GREEN_CAT/news/<? echo $row[id]; ?>" class="btn btn-primary hvr-sweep-to-right">დეტალურად</a>
									</div>
								</div>
							</div>
						</div>
					</div>
		<?
				}
				while($row = mysql_fetch_array($query));
		?>	
		
				<div class="clearfix"></div>
				<div class="pagination-wrap" style="border:none;text-align: center;">
					<ul class="pagination" style="float:none;">
				<? $pagination->getSwitcher();?>
					</ul>
				</div>
		<?
			}
			else
			{
				$page = $_GET['page'];
				if(!empty($page))
				{
					$pagination->build($page,$itemPerPage,$itemsTable);
					
					$sql = $pagination->genSQL();
					
					$query = $db->run_query($sql);
					$row = mysql_fetch_array($query);
					do
					{
			
			
		?>
					<div class="col-md-6 col-md-offset-3">
						<div class="item-grid">
							<div class="item-img" style="background-image: url('<? echo $row[m_pic]; ?>');">	
								<div class="item-overlay">
									<a href="/GREEN_CAT/news/<? echo $row[id]; ?>"><span class="icon-binocular"></span></a>
								</div>
							</div>
							<div class="item-desc">
								<div class="item-info">
							
									<h4 class="title"><a href="/GREEN_CAT/news/<? echo $row[id]; ?>"><? echo $row[title]; ?></a></h4>
								</div>
								<div class="item-detail">
									<div class="left">
										<div class="day"><span class="icon-calendar"></span><? echo $row['date']; ?></div>
									</div>
									<div class="right">
										<a href="/GREEN_CAT/news/<? echo $row[id]; ?>" class="btn btn-primary hvr-sweep-to-right">დეტალურად</a>
									</div>
								</div>
							</div>
						</div>
					</div>
		<?
					}
					while($row = mysql_fetch_array($query));
		?>		
					<div class="clearfix"></div>
					<div class="pagination-wrap" style="border:none;text-align: center;">
						<ul class="pagination" style="float:none;">
		<? 					$pagination->getSwitcher();?>
						</ul>
					</div>
		<?
				}
			}
		?>
		</div>	
	</div>
</div>
<?
}
else
{
	
	if(!empty($id))
	{
		
	?>
		<div class="container">
			<div class="row">
				<br>
				<h2 align="center"><? echo $row[title]; ?></h2>
				<br>
				<p style="text-align:center;"><img src="<? echo $row[m_pic]; ?>" /></p>
			</div>
			<div class="trip-detail">
				<div class="container">
					<div class="tab-wrap">
						<ul id="trip-tab" class="nav nav-tabs affix-top" data-spy="affix" data-offset-top="1290" >
							<li class="active"><a href="#overview" data-toggle="tab">ინფორმაცია</a></li>
						</ul>

						<div class="tab-content paper-effect">

							<div class="tab-pane active" id="overview">
								<div class="row">
									<? echo $row[description]; ?>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
<?
		
	}
}
?>
<script type="text/javascript" src="https://takidageorgia.com/GREEN_CAT/vendor/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="https://takidageorgia.com/GREEN_CAT/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<script type="text/javascript" src="https://takidageorgia.com/GREEN_CAT/vendor/retina.min.js"></script>

<script type="text/javascript" src="https://takidageorgia.com/GREEN_CAT/assets/js/min/main.min.js"></script>
</body>
</html>
