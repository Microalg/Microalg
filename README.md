Microalg
========

<a href="https://travis-ci.org/Microalg/Microalg" style="float:right;">
<img src="https://travis-ci.org/Microalg/Microalg.svg?branch=master"></a>

Langage et environnements dédiés à l’algorithmique.

<img src="http://www.art-decor.org/mediawiki/images/9/9f/Attention_icon.svg"
     alt="En travaux" height="50"/>&nbsp;&nbsp;**En cours de développement!**

[Site officiel](http://microalg.info/)

MicroAlg est une sorte de [pseudo-code](https://fr.wikipedia.org/wiki/Pseudo-code)
en français et exécutable sur machine. C’est un [langage
embarqué](https://fr.wikipedia.org/wiki/Langage_d%C3%A9di%C3%A9#Langages_d.C3.A9di.C3.A9s_internes_et_externes)
dans [PicoLisp](http://picolisp.com). Donc :

* c’est un [Lisp](http://fr.wikipedia.org/wiki/Lisp), donc il n’y a pas de
  syntaxe à apprendre, juste des commandes,
* elle peut *tourner* sur plusieurs plateformes :
    * Javascript (navigateurs ou NodeJS) grâce à
      [EmuLisp](http://grahack.github.io/EmuLisp),
    * là où PicoLisp (ASM, C) peut tourner nativement,
    * la JVM grâce à Ersatz (une implémentation en Java de Picolisp, par
      l’auteur de Picolisp),
* il est toujours possible si on se sent limité par ce langage, d’utiliser
  directement PicoLisp dans du code MicroAlg voir par exemple le fichier de
  tests `microalg_tests.malg`.

Voir le [site officiel](http://microalg.info/) pour plus de détails, dont le
code est dans [ce dépôt](https://github.com/Microalg/microalg.github.io).

Installation
============

Il est possible d’installer MicroAlg sur sa machine ou sur son site.

Voir le fichier [INSTALL.md](https://github.com/Microalg/Microalg/blob/latest/INSTALL.md).

Fichiers
========

Listés dans l’ordre où ils apparaissent sur GitHub.

* `emulisp` : implémentation de Picolisp en JS
    * voir [le site semi-officiel](https://github.com/grahack/emulisp)
    * la version utilisée ici est une version expérimentale, qui guide le
      développement de la version semie-officielle
* `ersatz` : implémentation de Picolisp en Java, par le créateur de PicoLisp
* `exemples` : quelques fichiers `.malg` (MicroAlg) ou `.l` (PicoLisp) en
  exemples, qui servent aussi pour les tests
* `features` : tests de fonctionnalité pour les interpréteurs, rédigés en
  [Gherkin](https://github.com/cucumber/cucumber/wiki/Gherkin)
    * `cli.py` fait le lien entre les mots-clef des tests Gherkin et les
      actions à prendre pour exécuter concrètement ces tests
* `install_scripts` : scripts d’installation :
    * `fix_lettuce.sh` : permet d’utiliser `lettuce` avec du texte comprenant
      des accents
    * `install_picolisp.sh` : pour l’interpréteur officiel de PicoLisp écrit en
      assembleur et C
      (d’où peut-être le répertoire `picolisp` qui traîne)
* `lib` : quelques fichiers mi-`.l` mi-`.malg`
    * `xml.l` : bibliothèque en PicoLisp pour la génération de XML
* `visuels` : divers fichiers graphiques comme par exemple le logo
* `web` : des fichiers de complément pour les `.html` de ce projet
    * `blockly` : un extrait des fichiers du projet permettant de programmer
      avec des pièces de puzzle ([Blockly](http://code.google.com/p/blockly/))
    * `blockly_microalg.js` : les blocs Blockly et leur générateur,
      correspondant aux mots-clés prédéfinis de MicroAlg
    * `ide_injections.js` : contient de quoi intégrer MicroAlg dans une page
    * `jquery.terminal*` : pour la console ou REPL ([site officiel](http://terminal.jcubic.pl/))
    * `parenedit.*` : pour les parenthèses de couleur
    * `showdown.*` : ([github](https://github.com/coreyti/showdown))
    * `showup.*` : ([github](https://github.com/upstage/showup))
    * `style.css` : la feuille de style
* `.gitignore` : spécification des fichiers non versionnés intentionnellement
* `.travis.yml` : spécification des tests automatisés via [Travis](http://travis-ci.org/)
* `INSTALL.md` : documentation complète concernant les différentes manières
  d’installer MicroAlg.
* `LICENSE` : la licence
* `README.md` : ce fichier (j’ai toujours rêvé d’écrire ça)
* `doc.html` : la documentation de MicroAlg
* `ide.html` : un IDE web de fortune, accessible [ici](http://microalg.info/ide.html)
* `malg` : exécutable permettant d’exécuter un `.malg` avec PicoLisp (ASM/C)
* `malgj` : exécutable permettant d’exécuter un `.malg` avec Ersatz (Java)
* `malgj.bat` : exécutable permettant d’exécuter un `.malg` avec Ersatz (Java) sous Windows
* `malgj_npp.bat` : exécutable permettant d’exécuter un `.malg` avec Ersatz (Java) sous Windows et depuis NotePad++
* `malgjs` : exécutable permettant d’exécuter un `.malg` avec Node et Emulisp
* `malgjs.bat` : exécutable permettant d’exécuter un `.malg` avec Node et Emulisp sous Windows
* `malgjs_npp.bat` : exécutable permettant d’exécuter un `.malg` avec Node et Emulisp sous Windows et depuis NotePad++
* `microalg.l` : implémentation de MicroAlg en PicoLisp, le cœur de ce projet
* `microalg_export*`
    * `microalg_export.l` : fonctions PicoLisp préparant l’export en général
    * `microalg_export_blockly.l` : reprogrammation de MicroAlg pour la mise en place de blocs correspondant à un programme
* `microalg_tests*` :
    * `microalg_tests.malg` : les tests des commandes MicroAlg testables avec
      PicoLisp/MicroAlg seulement
    * `microalg_tests.sh` :  de quoi lancer les tests sur toutes les
                             plateformes possibles, features non comprises
    * `microalg_tests_emulisp.sh` :  de quoi lancer les tests avec Node et EmuLisp
    * `microalg_tests_ersatz.bat` :   de quoi lancer les tests avec Ersatz sous Windows
    * `microalg_tests_ersatz.sh` :   de quoi lancer les tests avec Ersatz
    * `microalg_tests_features.sh` : de quoi lancer les tests de fonctionnalité
    * `microalg_tests_picolisp.sh` : de quoi lancer les tests avec Ersatz
* `tuto*.html` : pages web interactives pour apprendre MicroAlg, et plus
  généralement à faire ses premiers pas en algorithmique et en programmation
    * `tuto.html` : le tuto historique
    * `tuto_blocs.html` : le tuto avec les blocs (inachevé par manque de blocs)
    * `tuto_rapide.html` : le tuto pour les programmeurs avertis
    * `tuto.html` : le tuto plus succint et moins littéraire
