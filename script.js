document.addEventListener("DOMContentLoaded", function() {
    // Affiche le loader et l'animation du logo
    document.querySelector(".loader").style.display = "flex";
    document.querySelector(".logo").style.opacity = 1;
  
    // Après 5 secondes, masque le loader et l'animation du logo, et affiche la grille
    setTimeout(function() {
      document.querySelector(".loader").style.display = "none";
      document.querySelector(".logo").style.opacity = 0;
      document.querySelector(".grid").style.visibility = "visible";
      document.querySelector(".grid").style.opacity = 1;
    }, 5000); // Délai de 5 secondes
  });
  