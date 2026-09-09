# Checklist des captures d'écran — Job 01

Les captures se déposent dans `job-01-welcome-to-docker/images/` avec **exactement**
le nom indiqué ci-dessous, pour que le `README.md` les affiche automatiquement.

> Ce fichier est un guide de travail. Il peut être supprimé une fois toutes les
> captures faites.

## Comment capturer

- **Outil Capture d'écran de Windows** : `Win` + `Maj` + `S`, sélectionner la
  zone du terminal, puis enregistrer.
- Cadrer sur **la commande tapée + son résultat**, avec le prompt visible.
- Format `.png` (sauf la capture navigateur, déjà présente en `.jpg`).

## Préparer le terminal

Ouvrir **PowerShell** (pas Git Bash : `-it` y échoue, voir la capture 12).

---

## Les captures à faire

### Étape 2 — Installation et vérification

| # | Fichier | Commande à lancer / à montrer |
|---|---|---|
| 01 | `01-docker-version.png` | `docker --version` |
| 02 | `02-docker-info-erreur-daemon.png` | `docker info` **avec Docker Desktop fermé** — pour capturer l'erreur `failed to connect to the docker API`. Quitter Docker Desktop via l'icône de la barre des tâches, lancer la commande, capturer. |
| 03 | `03-docker-desktop-demarrage.png` | La fenêtre **Docker Desktop** en cours de démarrage (ou l'icône baleine dans la barre des tâches). |
| 04 | `04-docker-info.png` | `docker info` une fois Docker Desktop démarré — cadrer sur le bloc `Server:`. |

### Étape 3 — Docker Hub

| # | Fichier | Commande à lancer / à montrer |
|---|---|---|
| 05 | `05-docker-login.png` | `docker login`. Ne **pas** faire apparaître de mot de passe ou de token à l'écran — la connexion passe par le navigateur, capturer l'écran `Login Succeeded`. |

### Étape 4 — Commandes de base

| # | Fichier | Commande à lancer / à montrer |
|---|---|---|
| 06 | `06-docker-ps.png` | `docker ps` |
| 07 | `07-docker-images.png` | `docker images` |
| 08 | `08-docker-run-sans-argument.png` | `docker run` (sans rien derrière) → erreur `requires at least 1 argument` |
| 09 | `09-docker-stop-sans-argument.png` | `docker stop` (sans rien derrière) → même type d'erreur |

### Étape 5 — Récupérer l'image

| # | Fichier | Commande à lancer / à montrer |
|---|---|---|
| 10 | `10-docker-pull.png` | `docker pull docker/welcome-to-docker` |
| 11 | `11-docker-images-apres-pull.png` | `docker images docker/welcome-to-docker` |

### Étape 6 — Lancer le conteneur

| # | Fichier | Commande à lancer / à montrer |
|---|---|---|
| 12 | `12-docker-run-erreur-tty.png` | Depuis **Git Bash** cette fois : `docker run -it --rm -p 8088:80 docker/welcome-to-docker` → erreur `the input device is not a TTY` |
| 13 | `13-docker-run-conteneur.png` | De retour dans PowerShell : `docker run -d -p 8088:80 --name welcome-exercice docker/welcome-to-docker` |
| 14 | `14-docker-ps-conteneur-actif.png` | `docker ps` — le conteneur `welcome-exercice` apparaît en `Up` |

### Étape 7 — Navigateur

| # | Fichier | Statut |
|---|---|---|
| 15 | `15-navigateur-welcome-to-docker.jpg` | ✅ **Déjà présente** — la page `Congratulations!!!` sur `http://localhost:8088` |

### Étape 8 — Arrêter

| # | Fichier | Commande à lancer / à montrer |
|---|---|---|
| 16 | `16-docker-stop.png` | `docker stop welcome-exercice` |
| 17 | `17-docker-ps-a-conteneur-arrete.png` | `docker ps` (vide) puis `docker ps -a` (statut `Exited (0)`) — les deux dans la même capture, c'est plus parlant |

### Étape 9 — Supprimer le conteneur

| # | Fichier | Commande à lancer / à montrer |
|---|---|---|
| 18 | `18-docker-rm.png` | `docker rm welcome-exercice` puis `docker ps -a` (vide) |

### Étape 10 — Supprimer l'image

| # | Fichier | Commande à lancer / à montrer |
|---|---|---|
| 19 | `19-docker-rmi-erreur-conflit.png` | Recréer un conteneur puis tenter la suppression de l'image (voir le bloc ci-dessous) → erreur `conflict: unable to delete` |
| 20 | `20-docker-rmi.png` | `docker rm welcome-test` puis `docker rmi docker/welcome-to-docker` |
| 21 | `21-docker-images-final.png` | `docker images docker/welcome-to-docker` — liste vide |

Pour reproduire l'erreur de la capture 19 :

```powershell
docker run -d --name welcome-test -p 8089:80 docker/welcome-to-docker
docker stop welcome-test
docker rmi docker/welcome-to-docker    # <- capture ici, l'erreur de conflit
```

---

## Vérification finale

Une fois toutes les captures déposées dans `images/` :

1. Ouvrir `job-01-welcome-to-docker/README.md` dans VS Code
   (`Ctrl` + `Maj` + `V` pour l'aperçu Markdown) et vérifier qu'**aucune image
   n'est cassée**.
2. Vérifier qu'aucune capture ne laisse apparaître de **mot de passe, token ou
   information personnelle**.
3. Commit + push.
