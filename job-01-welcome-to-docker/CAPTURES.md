# Captures d'écran du Job 01

Toutes les captures ont été réalisées sur **cette machine**, avec les commandes
réellement exécutées dans une fenêtre **Windows PowerShell**, et le résultat brut
tel qu'il s'est affiché.

## Inventaire

| # | Fichier | Contenu |
|---|---|---|
| 01 | `01-docker-version.png` | `docker --version` |
| 02 | `02-docker-info-erreur-daemon.png` | Moteur arrêté : `docker --version` répond, `docker ps` et `docker images` échouent |
| 03 | `03-docker-desktop-demarrage.png` | Fenêtre Docker Desktop, mention « Engine running » |
| 04 | `04-docker-info.png` | `docker info`, informations du moteur |
| 04b | `04b-docker-version-client-serveur.png` | `docker version` : blocs `Client:` (windows) et `Server:` (linux) |
| 06 | `06-docker-ps.png` | `docker ps` |
| 07 | `07-docker-images.png` | `docker images` |
| 08 | `08-docker-run-sans-argument.png` | `docker run` sans argument → erreur de syntaxe |
| 09 | `09-docker-stop-sans-argument.png` | `docker stop` sans argument → erreur de syntaxe |
| 10 | `10-docker-pull.png` | `docker pull docker/welcome-to-docker` |
| 11 | `11-docker-images-apres-pull.png` | `docker images docker/welcome-to-docker` |
| 12 | `12-docker-run-it-rm.png` | La commande exacte du sujet (`-it --rm`) : logs nginx, terminal bloqué |
| 13 | `13-docker-run-conteneur.png` | `docker run -d -p 8088:80 --name welcome-exercice ...` |
| 14 | `14-docker-ps-conteneur-actif.png` | `docker ps --filter name=welcome-exercice` → `Up` |
| 15 | `15-navigateur-welcome-to-docker.jpg` | La page `Congratulations!!!` sur `http://localhost:8088` |
| 16 | `16-docker-stop.png` | `docker stop welcome-exercice` |
| 17 | `17-docker-ps-a-conteneur-arrete.png` | `docker ps` vide vs `docker ps -a` → `Exited (0)` |
| 18 | `18-docker-rm.png` | `docker rm` puis `docker ps -a` vide |
| 19 | `19-docker-rmi-erreur-conflit.png` | `docker rmi` sur une image encore référencée → erreur de conflit |
| 20 | `20-docker-rmi.png` | `docker rm` puis `docker rmi` → `Untagged:` + `Deleted:` |
| 21 | `21-docker-images-final.png` | `docker images` sur l'image supprimée → liste vide |

## Capture manquante

**`docker login`** n'a pas de capture : la commande affiche des informations liées
au compte Docker Hub. Le rendu explique l'étape sans l'illustrer.

Pour l'ajouter : lancer `docker login` dans PowerShell, capturer l'écran
`Login Succeeded`, vérifier qu'aucun jeton n'est visible, enregistrer sous
`images/05-docker-login.png`, puis ajouter la ligne suivante dans le README à la
section 3 :

```markdown
![Connexion au compte Docker Hub](./images/05-docker-login.png)
```
