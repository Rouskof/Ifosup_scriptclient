var contact = 
	{
		'Adresse' : 
		[
			{
				'nom' : 'hillisha',
				'email' : 'hili@toto.com'
			},
			{
				'nom' : 'paul',
				'email' : 'paul@toto.com'
			},
			{
				'nom' : 'vishall',
				'email' : 'vis@toto.com'
			},
			{
				'nom' : 'mike',
				'email' : 'mimi@toto.com'
			},
			{
				'nom' : 'jamie',
				'email' : 'jamie@toto.com'
			},
		]
	};
// déclaration d'un objet qui contiendra toute les méthodes
			
var personne =
			{
				toutAfficher : function()
				{
					// sauvegarder les noeuds
					var target = document.getElementById('cible');
					
					// sauvegarder le JSON dans une variable
					var annuaire = contact.Adresse;
					var nb = annuaire.length; // calcul le nombre de ligne
					target.innerHTML = '';
					if (nb > 0 )
					{
						for (var i = 0; i < nb; i++)
						{
							var buffer = annuaire[i];
							target.innerHTML += '<p>'+buffer.nom+',<a href="mailto:'+buffer.email+'">'+buffer.email+'</a></p>';
						}// fin de la boucle
					}//fin du test
				}, // fin de la méthode toutAfficher
				recherche : function()
				{
					// sauvegarder les noeuds
					var target = document.getElementById('cible');
					
					// sauvegarder le JSON dans une variable
					var annuaire = contact.Adresse;
					var nb = annuaire.length; // calcul le nombre de ligne
					target.innerHTML = '';
					
					
					 var aRechercher = champRecherche.value;
					if (nb > 0 && aRechercher !== '')
						for (var i = 0; i < nb; i++)
						{
							var buffer = annuaire[i];
							
							if(buffer.nom.indexOf(aRechercher)!=-1)
							   {
									target.innerHTML += '<p>'+buffer.nom+',<a href="mailto:'+buffer.email+'">'+buffer.email+'</a></p>';
							   }
						}
					
				}
			} // fin de l'objet

var btnTous = document.getElementById('tous');
btnTous.addEventListener('click', personne.toutAfficher, false);

var champRecherche = document.getElementById('champRecherche');
champRecherche.addEventListener('keyup', personne.recherche, false);
































