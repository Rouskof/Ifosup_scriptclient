// sauvegarder la cible

var laCible = document.getElementById('zoneCible');

// création d'un nouvel élément <p>

var p = document.createElement('p');
var texte = document.createTextNode('ceci est un nouveau paragraphe');

// insertion du noeud texte dans la balise <p>

var tempo = p.appendChild(texte);

// insertion dans l'objet dom cible

laCible.appendChild(tempo);

//------------------------------------------------------------------

var asuprimer = document.getElementById('ligne');

laCible.removeChild(asuprimer);