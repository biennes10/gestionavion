<?php
include 'cnx.php';
$rqt = $cnx->prepare("insert into programmervol (numPers,numVol) values(".$_GET["idPers"].",".$_GET["idVol"].")");
$rqt->execute();
?>