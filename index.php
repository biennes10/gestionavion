<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Devoir - Avion</title>
        <script src="./JQuery/JQuery 3.5.1.js"></script>
        <script src="./Bootstrap/js/bootstrap.min.js"></script>
        <script src="./Bootstrap/js/bootstrap.js"></script>
        <link href="./Bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="./Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
        <script src="./JS/fonctions.js"></script>
        <link href="./CSS/site.css" rel="stylesheet">
        <script>
            
        $
        (
            function()
            {
                
            }
        );

        
         </script>
    </head>
    <body>
        <p class="h1 text-danger text-center">Gestion du personnel - Vols</p>
        <div id='divPrincipale'>
            <div id="divVols">
                <h1>Liste des vols</h1></br>
                <table id='tblVols' class='table table-hover'>
                <?php
                    include 'PHP/cnx.php';
                    $requete = $cnx->prepare("select idVol, villeDep, villeArr, dateVol, numAvion, nomTypeAvion from vol, avion where vol.numAvion = avion.num ORDER BY idVol ");
                    $requete->execute();
                    foreach ($requete->fetchAll(PDO::FETCH_ASSOC)as $ligne)
                    {
                         echo "<tr class = 'clickVol' idClickVol = '".$ligne["idVol"]."'>";
                            echo "<td>".$ligne['idVol']."</td>";
                            echo "<td>".$ligne['villeDep']."</td>";
                            echo "<td>".$ligne['villeArr']."</td>";
                            echo "<td>".$ligne['dateVol']."</td>";
                            echo "<td>".$ligne['numAvion']."</td>";
                            echo "<td>".$ligne['nomTypeAvion']."</td>";
                        echo "</tr>";
                    }
                ?>  
                </table>
            </div>
            <div id="divTypesPersonnel" >:
                <h1>Personnel nécessaire pour le vol </h1></br>
                <table id='tblTypePersonnel' class='table table-hover'>

                </table>
            </div>
            <div id="divPersonnels" ondrop = "drop(event)" ondragover = "allowDrop(event)">
                <h1>Personnel disponible </h1></br>
                <table id='tblPersonnel' class='table table-hover'>

                </table>
            </div>
            <div id="divProgrammerVol">
            <h1>Programmation du vol </h1></br>
                <table id='tblProgrammation' class='table table-hover'>

                </table>
            </div>
        </div>
        <div id = "idVolContainer" idVol ="">
            </div>
    </body>
    <script>
        $(".clickVol").click(function()
        {
           GetTypePersonnel($(this).attr("idClickVol"))
        });

    </script>
</html>
