# Captures Docker Desktop à réaliser — Job 03

Les 16 captures du terminal sont faites. Il manque les captures de **l'interface
graphique**, que le sujet exige en plus (« montrer les deux manières »).

Elles ne peuvent pas être automatisées : Docker Desktop suspend son rendu tant
que la fenêtre n'a pas le focus, et Windows refuse de céder le focus à un
programme en arrière-plan. Elles doivent donc être prises à la main.

## Préparer l'environnement

L'image et les conteneurs ont été supprimés à la fin du rendu. Pour refaire le
parcours dans l'interface, il n'y a rien à préparer : tout se fait depuis
Docker Desktop.

## Les captures à faire

| # | Fichier | Où / quoi capturer |
|---|---|---|
| 18 | `18-docker-desktop-terminal.png` | Le terminal intégré ouvert (icône **`>_`** en bas à droite), avec `docker search pengbai` tapé dedans |
| 19 | `19-docker-desktop-pull.png` | Barre de recherche du haut → taper `pengbai/docker-supermario` → bouton **Pull**, puis l'onglet **Images** montrant l'image arrivée |
| 20 | `20-docker-desktop-run-optional-settings.png` | Onglet **Images** → **▶ Run** → panneau ***Optional settings*** déplié, avec **Host port** = `8600` renseigné |
| 21 | `21-docker-desktop-containers.png` | Onglet **Containers** avec le conteneur en cours, son **Container ID** et le port `8600:8080` visibles |
| 22 | `22-docker-desktop-stop-supprimer.png` | Onglet **Containers** → bouton **■** pour arrêter, puis icône **🗑** pour supprimer |
| 23 | `23-docker-desktop-supprimer-image.png` | Onglet **Images** → icône **🗑** sur `pengbai/docker-supermario` |

## Une fois les fichiers déposés dans `images/`

Dis-le moi : je remplace la section 10 du README (actuellement marquée
« à compléter ») par les captures annotées, et je merge dans `main`.

## Le parcours, pas à pas

1. Ouvrir **Docker Desktop**
2. Menu gauche → **Images**
3. Cliquer l'icône **`>_`** en bas à droite → le terminal s'ouvre en bas
4. Y taper `docker search pengbai` → **capture 18**
5. Barre de recherche en haut → `pengbai/docker-supermario` → **Pull** → **capture 19**
6. Onglet **Images** → **▶ Run** sur l'image → déplier ***Optional settings*** →
   **Host port** = `8600` → **capture 20** → valider avec **Run**
7. Menu gauche → **Containers** → **capture 21**
8. Cliquer le port `8600:8080` (c'est un lien) → le jeu s'ouvre dans le navigateur
9. Bouton **■** pour arrêter, puis **🗑** pour supprimer → **capture 22**
10. Menu gauche → **Images** → **🗑** sur l'image → **capture 23**
