<?php

function schcat_is_category_enabled($category_id)
{

	$category_date_start_option = get_option("schcat_option__category_" . $category_id . "_dates__date_start");
	$category_date_end_option = get_option("schcat_option__category_" . $category_id . "_dates__date_end");

	if(empty($category_date_start_option) || empty($category_date_end_option)){
		return null;
	}

	$now = new DateTime("now");
	$date_start = DateTime::createFromFormat("d-m-Y", $category_date_start_option);
	$date_end = DateTime::createFromFormat("d-m-Y", $category_date_end_option);

	return ($now >= $date_start && $now <= $date_end);

}