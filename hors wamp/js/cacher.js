// Sauvegarde des 2 noeuds dans des variables
var bouton = document.getElementById('cacher');
var target = document.getElementById('target');
var montrer = document.getElementById('afficher');



montrer.setAttribute('class','cacher');
// fonction qui ajoute la class cacher
function cacher()
{
	target.setAttribute('class','cacher');
	bouton.setAttribute('class','cacher');
	montrer.removeAttribute('class');
}

// ajout de la class au clique
bouton.addEventListener('click',cacher,false);


function afficher()
{
	target.removeAttribute('class');
	montrer.setAttribute('class','cacher');
	bouton.removeAttribute('class');
}
montrer.addEventListener('click',afficher,false);