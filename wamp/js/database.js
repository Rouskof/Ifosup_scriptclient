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

function appelAjax(dataUrl,cible,callback)
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
			if (typeof callback === "function")
			{
				callback(contact);
			}
			
		}//fin du test si ok
	}// fin onreadystatechange
}// fin fonction appelAjax

var test = 
	{
		lire : function()
		{
			appelAjax('../../data/lecture.php',target, function(data)
					  {
					// sauvegarder les noeuds
					var target = document.getElementById('endroit');
					
					// sauvegarder le JSON dans une variable
					
					var nb = data.length; // calcul le nombre de ligne
					target.innerHTML = '';
					
					
					 var aRechercher = champRecherche.value;
					if (nb > 0 && aRechercher !== '')
						for (var i = 0; i < nb; i++)
						{
							var buffer = data[i];
							
							if(buffer.nom.indexOf(aRechercher)!=-1)
							   {
									target.innerHTML += '<p>'+buffer.nom;
							   }
							}// fin de la boucle
						  }// fin du test
					  );// fin de fonction
			
		}
	}




// sauvegarder le noeud du bouton

var target = document.getElementById('endroit');


// ajouter un listener
var champRecherche = document.getElementById('champRecherche');
champRecherche.addEventListener('keyup', test.lire, false);











				




































