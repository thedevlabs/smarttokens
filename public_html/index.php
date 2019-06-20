<?php

error_reporting(E_ALL);

require '../vendor/smarty/smarty/libs/Smarty.class.php';

// create object
$smarty = new Smarty;

// assign some content. This would typically come from
// a database or other source, but we'll use static
// values for the purpose of this example.
$smarty->assign('name', '');
$smarty->assign('address', '1305 Franklin St');
$smarty->assign('cell_phone', '');
$smarty->assign('nickname', '');


// assign an array of data
$smarty->assign('names', array('bob','jim','joe','jerry','fred'));

// assign an associative array of data
$smarty->assign('users', array(
	array('name' => 'bob', 'phone' => '555-3425'),
	array('name' => 'jim', 'phone' => '555-4364'),
	array('name' => 'joe', 'phone' => '555-3422'),
	array('name' => 'jerry', 'phone' => '555-4973'),
	array('name' => 'fred', 'phone' => '555-3235')
    ));
    
// display it
$smarty->display('index.tpl');
