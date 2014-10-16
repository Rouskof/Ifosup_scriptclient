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

function appelAjax(dataUrl,cible)
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
			var nb = contact.adresse.length;
			cible.innerHTML = '';
			if (nb > 0)
			{
				for (i = 0; i < nb ; i++)
				{
					var obj = contact.adresse[i];
					cible.innerHTML += obj.nom + '<br>';
				}// fin de la boucle
			}// fin du test
			
		}//fin du test si ok
	}// fin onreadystatechange
}// fin fonction appelAjax

var test = 
	{
		lire : function()
		{
			appelAjax('../../data/contact2.json',target);
			appelAjax('../../data/contact3.json',target2);
		}
	}
// sauvegarder le noeud du bouton
var btn = document.getElementById('json1');
var target = document.getElementById('cible');
var target2 = document.getElementById('cible2');

// ajouter un listener
btn.addEventListener('click',test.lire,false);