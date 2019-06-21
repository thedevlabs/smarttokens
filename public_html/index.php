<?php

error_reporting(E_ALL);

require '../vendor/smarty/smarty/libs/Smarty.class.php';

// create object
$smarty = new Smarty;

// assign some content. This would typically come from
// a database or other source, but we'll use static
// values for the purpose of this example.
$smarty->assign('name', '');
$smarty->assign('address', '');
$smarty->assign('cell_phone', '');

// display it
$smarty->display('index.tpl');
