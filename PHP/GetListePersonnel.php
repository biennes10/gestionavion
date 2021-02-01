<tbody>

<tbody>
<?php
include 'cnx.php';
$requete = $cnx->prepare("select personnel.idPers, personnel.nom, typepersonnel.nomTypePersonnel, typepersonnel.idTypePersonnel from personnel inner join typepersonnel on personnel.idType = typepersonnel.idTypePersonnel where personnel.idPers not in(select personnel.idPers from programmervol where programmervol.numVol = ".$_GET["idVol"].")");
$requete->execute();
$typeToClass = array(
    1 => "steward",
    2 => "pilote",
    3 => "copilote",
    4 => "hotesse"
);
foreach ( $requete->fetchAll(PDO::FETCH_ASSOC) as $ligne)
{
    echo "<tr draggable='true' ondragstart='drag(event)' class = '".$typeToClass[$ligne['idTypePersonnel']]."'>";
    echo "<td>".$ligne['idPers']."</td>";
    echo "<td>".$ligne['nom']."</td>";
    echo "<td>".$ligne['nomTypePersonnel']."</td>";
    echo "</tr>"; 
}
?>
</tbody> 