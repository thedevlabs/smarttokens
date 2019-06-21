<?php

error_reporting(E_ALL);

require '../vendor/smarty/smarty/libs/Smarty.class.php';

// create object
$smarty = new Smarty;

// assign some content. This would typically come from
// a database or other source, but we'll use static
// values for the purpose of this example.
$smarty->assign('name', 'Puja Dahal');
$smarty->assign('address', '1305 Franklin St');
$smarty->assign('cell_phone', '510-236-4616');


// display it
$smarty->display('index.tpl');
