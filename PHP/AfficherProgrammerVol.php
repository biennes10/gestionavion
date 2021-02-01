<tbody>
<?php
include 'cnx.php';
$requete = $cnx->prepare("select personnel.idPers, vol.idVol from vol inner join programmervol on vol.idVol = programmervol.numVol INNER JOIN personnel on programmervol.numPers = personnel.idPers inner join typepersonnel on personnel.idPers = typepersonnel.idTypePersonnel where vol.idVol = ".$_GET["idVol"]);
$requete->execute();
foreach ( $requete->fetchAll(PDO::FETCH_ASSOC) as $ligne)
{
    echo "<tr>";
        echo "<td>".$ligne['idPers']."</td>";
        echo "<td>".$ligne['idVol']."</td>";
    echo "</tr>";
}
?>
</tbody>
