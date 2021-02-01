<tbody>
<?php
include 'cnx.php';
$requete = $cnx->prepare("select typepersonnel.idTypePersonnel, typepersonnel.nomTypePersonnel, aviontypepersonnel.qte from vol inner join avion on vol.numAvion = avion.num inner join aviontypepersonnel on avion.nomTypeAvion = aviontypepersonnel.nomTypeAvion inner join typepersonnel on aviontypepersonnel.idType = typepersonnel.idTypePersonnel where vol.idVol = ".$_GET["idVol"]);
$requete->execute();
$typeToClass = array(
    1 => "steward",
    2 => "pilote",
    3 => "copilote",
    4=> "hotesse"
);
foreach ( $requete->fetchAll(PDO::FETCH_ASSOC) as $ligne)
{
    for($i =0; $i<$ligne["qte"];$i++){
        echo "<tr ondrop='drop(event)' ondragover = 'allowDrop(event)' nomTypePersonnel ='".$ligne['nomTypePersonnel']."' tableau='tableauNecessaire' class = '".$typeToClass[$ligne['idTypePersonnel']]."'>";
        echo "<td>".$ligne['idTypePersonnel']."</td>";
        echo "<td>".$ligne['nomTypePersonnel']."</td>";
        echo "</tr>";
    }
}
?>
</tbody>    
