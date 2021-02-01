function InsertProgrammer(idVol, idPers)
{
    $.ajax
    (
        {
            type:"get",
            url:"./PHP/InsertProgrammerVol.php",    
            data:"idVol="+idVol+"&idPers="+idPers,
            success:function(data)
            {
               GetProgrammationPersonnel(idVol);
            },
            error:function()
            {
                alert("Erreur de récupération du personnel");
            }
        }
    );
}
function GetPersonnel(idVol)
{
    $.ajax
    (
        {
            type:"get",
            url:"./PHP/GetListePersonnel.php",    
            data:"idVol="+idVol,
            success:function(data)
            {
                $('#tblPersonnel').empty();
                $('#tblPersonnel').append(data);
               GetProgrammationPersonnel(idVol);
                
            },
            error:function()
            {
                alert("Erreur de récupération du personnel");
            }
        }
    );
}

function GetProgrammationPersonnel(idVol)
{
    $.ajax
    (
        {
            type:"get",
            url:"./PHP/AfficherProgrammerVol.php",    
            data:"idVol="+idVol,
            success:function(data)
            {
                $('#tblProgrammation').empty();
                $('#tblProgrammation').append(data);            
            },
            error:function()
            {
                alert("Erreur de récupération du personnel");
            }
        }
    );
}

function GetTypePersonnel(idVol)
{
     $("#idVolContainer").attr("idVol",idVol);
    $.ajax
    (
        {
            type:"get",
            url:"./PHP/GetTypesPersonnel.php",
            data: "idVol="+idVol,
            success:function(data)
            {
    
                $('#tblTypePersonnel').empty();
                $('#tblTypePersonnel').append(data);
                GetPersonnel(idVol);
            },
            error:function()
            {
                alert("Erreur de récupération du personnel");
            }
        }
    );
}
function allowDrop(ev)
{
    ev.preventDefault();
}
function drag(ev)
{
    ev.dataTransfer.setData("idPers", ev.srcElement.children[0].innerText);
    ev.dataTransfer.setData("nom", ev.srcElement.children[1].innerText);
    ev.dataTransfer.setData("nomTypePersonnel", ev.srcElement.children[2].innerText);
}
function drop(ev)
{
    var idPers = ev.dataTransfer.getData('idPers');
    var nom = ev.dataTransfer.getData('nom');
    var nomTypePersonnel = ev.dataTransfer.getData('nomTypePersonnel');
    if(ev.currentTarget.getAttribute("tableau") == "tableauNecessaire")
    {
        if(ev.currentTarget.getAttribute("nomTypePersonnel") == nomTypePersonnel){
            if(ev.currentTarget.getAttribute("class") != "indisponible"){
                $('#tblPersonnel').find('td:contains('+idPers+')').parent().remove();
                ev.currentTarget.setAttribute("class","indisponible");
                InsertProgrammer($("#idVolContainer").attr("idVol"),idPers);
                
            }else{
                alert('On a déjà programmé une personnne pour ce status');
            }
            
        }else{
            alert('Les types de personnel ne correspondent pas');
        }
    }
    else
    {
    
    }
    
}

