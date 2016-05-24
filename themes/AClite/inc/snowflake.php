<?php

/**********
* SNOWFLAKE
***********
*
* Custom variables specific to this client's site
*
***********/

global $redux_builder_ac ;

$clientname = $redux_builder_ac['name-options'];
$designername = '<i class="fa fa-compass"></i> Actors Compass';
$designersite = 'http//:actorscompass.com';
$designerattr = 'Powered by';


global $clientname;
global $designername;
global $designersite;
global $designerattr;





add_action( 'call_displayClientName', 'displayClientName');
function displayClientName() {
	global $redux_builder_ac; echo $redux_builder_ac['name-options'];
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
