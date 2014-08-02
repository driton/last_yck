// Funksioni per thirrjen e tabeles me AJAX
function showTable(){
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("table").innerHTML=xmlhttp.responseText;
    }
  }
var city = document.getElementById("city").value;
var neighborhood = document.getElementById("neighborhood_select").value;
neighborhood = neighborhood.split("|");
neighborhood = neighborhood[0];
xmlhttp.open("GET","table.php?city="+city+"&neighborhood="+neighborhood,true);
xmlhttp.send();
}


//Funksioni per filtrimin e te dhenave te lagjes, duke u bazuar ne qytet
function filterNeighborhood(){
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("neighborhood").innerHTML=xmlhttp.responseText;
    }
  }
var city = document.getElementById("city").value;

xmlhttp.open("GET","neighborhood.php?city="+city,true);
xmlhttp.send();
}


function filterCategories(){
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("category").innerHTML=xmlhttp.responseText;
    }
  }
var city = document.getElementById("city_recreation").value;

xmlhttp.open("GET","categories.php?city="+city,true);
xmlhttp.send();
}


function showTableRecreation(){
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("table").innerHTML=xmlhttp.responseText;
    }
  }

var city = document.getElementById("city_recreation").value;
var category = document.getElementById("category_select").value;

xmlhttp.open("GET","tableRecreation.php?city="+city+"&category="+category,true);
xmlhttp.send();
}
function filterNeighborhoodTrash()
{
var xmlhttp;

if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
 
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("neighborhood_div").innerHTML=xmlhttp.responseText;
    }
  }
  
  var city =document.getElementById('city').value;
xmlhttp.open("GET","neighborhood.php?city="+city,true);
xmlhttp.send();
}

function showTableTrashCollection(){
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("table").innerHTML=xmlhttp.responseText;
    }
  }

var neighborhood = document.getElementById("neighborhood_select").value;

xmlhttp.open("GET","table_trash.php?neighborhood="+neighborhood,true);
xmlhttp.send();
}




