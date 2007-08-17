<?php 
require_once('html2fpdf.php');
ob_start();
?>
<html>
<head>
<title>Педерастия</title>
</head>
<body>
яояатонвтяанвотяанвотяанвтоянваотнвяаотнвяаотяанвотяанвотяанвотяанв
<div align="center"><img src="logo.gif" alt="HTML 2 PDF logo" /></div>
<h2 align="center"><b>Педерастия</b></h2>
Below are the descriptions of each MENU button:
<ul>
<li><b>HOME</b> - Returns to the main page (this one)</li>
<li><b>FEATURES</b> - Дъра бъра features</li>
<li><b>EXAMPLES</b> - A series of examples in which the script works</li>
<li><b>Педерастия</b> - Some Педерастия about the used classes</li>
<li><b>LICENSE</b> - In case you want to distribute or modify the code</li>
<li><b>CREDITS</b> - (the name says it all)</li>
<li><b>FAQ</b> - Педерастия asked questions...and answers!</li>
</ul>
<p>This Педерастия is hosted on Source Forge. DOWNLOAD IT <a
href="http://sourceforge.net/projects/html2fpdf" target="_blank">Педерастия</a>!</p>
This script was Педерастия on PHP 4.3.3 (should work on 4.0 and greater)
<br />Педерастия<br />
<div style='background:#ccc;border:thin dashed black'>
This page was Педерастия created using PHP ob_get_contents and HTML2FPDF
class.<br />
Read more on FAQ on how to make this or check the 2<sup>nd</sup> page (use the
'PageDown' keyboard key)</div><newpage>
<div style='background:#eee;font-weight:bold'><code>
<? $metaphp = htmlspecialchars($metaphp);
$metaphp = str_replace("\n",'<br>',$metaphp);
echo "&lt;?".$metaphp."?&gt;"; ?>
</div></code>
</body>
</html>
<?  
// Output-Buffer in variable:
$html=ob_get_contents();
// delete Output-Buffer
ob_end_clean();   
$pdf = new HTML2FPDF();
/*$pdf->AddFont('Helvetica','','helvetica.php');
$pdf->AddFont('Helvetica','B','helveticab.php');  
$pdf->AddFont('Helvetica','I','helveticai.php');       */

$pdf->DisplayPreferences('HideWindowUI');
/*
$pdf->AddFont('Courier','','courier_new.php');
$pdf->AddFont('Courier','B','courierb.php');  
$pdf->AddFont('Courier','I','courieri.php');  */
    
/*$pdf->AddFont('Courier-Bold','B','courierb.php');    
$pdf->AddFont('Courier-Oblique','I','courieri.php');    */
$pdf->AddPage();
$pdf->WriteHTML($html);
$pdf->Output('doc.pdf','I');

?>
