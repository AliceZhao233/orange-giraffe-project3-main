<?php
$page_title = "Home";

$nav_home_class = "active_page";

const RATING_STARS = array(
  1 => "Poor",
  2 => "Fair",
  3 => "Good",
  4 => "Very Good",
  5 => "Excellent"
);

$restaurants_result = exec_sql_query($db, "SELECT id, name, rating, style FROM restaurants ORDER BY id ASC;");
$restaurants = $restaurants_result->fetchAll();

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title><?=$page_title?></title>
  <link rel="stylesheet" type="text/css" href="/public/styles/site.css">
</head>

<body>
<h1 class="title">Ithaca Restaurant Rating</h1>
<div class="home">
    <div class="row-flex-wrap">
      <?php foreach ($restaurants as $v):?>
        <?php
        $tag_result = exec_sql_query($db, "SELECT tags.name FROM restaurant_tags INNER JOIN tags ON ( restaurant_tags.tag_id = tags.id) WHERE restaurant_tags.restaurant_id = :id",
          array( 'id' => $v['id']));
        $tag_list = $tag_result->fetchAll();
        ?>
          <div class="cate-list">
          <?php include('restaurant_card.php'); ?>
                  </div>
              </div>
          </div>
      <?php endforeach;?>
    </div>
</div>

</body>

</html>
