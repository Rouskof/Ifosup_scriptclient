function getHttpObject()
{
	var xhr;
	if (window.XMLHttpRequest)//test si compatible
	{
		xhr = new XMLHttpRequest();
	}
	else
	{
		xhr = new ActiveXObject('Maxm112.XMLHTPP');
	}
	return xhr;
}

function appelAjax(dataUrl)
{
	var request = getHttpObject(); // création de l'objet
	// préparer l'appel Ajax
	request.open('GET',dataUrl,true);
	// Initialise la requete
	request.send(null);
	// gestion le retour des donnée
	request.onreadystatechange = function()
	{
		if (request.readyState === 4 && request.status === 200)
		{
			// traitement du contenu json
			var contact = JSON.parse(request.responseText);
			console.log(contact);
		}//fin du test si ok
	}// fin onreadystatechange
}// fin fonction appelAjax

var test = 
	{
		lire : function()
		{
			appelAjax('../../data/contact.json');
		}
	}
// sauvegarder le noeud du bouton
var btn = document.getElementById('json1');

// ajouter un listener
btn.addEventListener('click',test.lire,false);