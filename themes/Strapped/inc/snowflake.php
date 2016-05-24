<?php

/**********
* SNOWFLAKE
***********
*
* Custom variables specific to this client's site
*
***********/


$clientname = 'WiziWidget Gadgets';
$designername = 'Keller Digital';
$designersite = 'http//:kellerdigital.com';
$designerattr = 'Built by';


global $clientname;
global $designername;
global $designersite;
global $designerattr;





add_action( 'call_displayClientName', 'displayClientName');
function displayClientName() {
	global $clientname; echo $clientname;
}
add_action( 'call_displayDesignerName', 'displayDesignerName');
function displayDesignerName() {
	global $designername; echo $designername;
}
add_action( 'call_displayDesignerSite', 'displayDesignerSite');
function displayDesignerSite() {
	global $designersite; echo $designersite;
}
add_action( 'call_displayDesignerAttr', 'displayDesignerAttr');
function displayDesignerAttr() {
	global $designerattr; echo $designerattr;
}