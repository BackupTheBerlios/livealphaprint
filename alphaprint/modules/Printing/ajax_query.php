<?php
if(!defined('sugarEntry'))define('sugarEntry', true);

require_once('modules/Printing/Printing.php');
$printing = new Printing();
$quantity = $printing->getQuantity();
$multiplicity = $printing->getMultiplicity();

header('Content-Type: text/xml');
header("Cache-Control: no-cache, must-revalidate");
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
//A date in the past

echo '<table><tr>';
echo '<td><input name=color_b id=color_b value='.$multiplicity['color_side_B'].'>';
echo '<td><input name=quantity_result id=quantity_result value='.$quantity.'>';
echo '<td><input name=multiplicity_result id=multiplicity_result value='.$multiplicity['volume'].'>';
echo '</td>';
echo '</tr>';
echo '</table>';

?>