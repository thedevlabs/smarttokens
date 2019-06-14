<?php

require '../vendor/smarty/Smarty.class.php';

// create object
$smarty = new Smarty;

// assign some content. This would typically come from
// a database or other source, but we'll use static
// values for the purpose of this example.
$smarty->assign('name', 'firstly lastly');
$smarty->assign('address', '1305 Franklin St');
$smarty->assign('cell_phone', '');

// display it
$smarty->display('index.tpl');
