# Docker-Start

Dépôt d'exercices Docker réalisés dans le cadre de ma formation développeur web
à **La Plateforme**.

Chaque job est développé sur une **branche dédiée**, puis fusionné dans `main`
une fois terminé.

## Sommaire des jobs

| Jour | Job | Sujet | Rendu | Branche |
|------|-----|-------|-------|---------|
| 1 | 01 | Welcome to Docker — Part 1 : Pull and Run | [job-01-welcome-to-docker](./job-01-welcome-to-docker/README.md) | `job-01-welcome-to-docker` |
| 1 | 02 | Welcome to Docker — Part 2 : Build and Push | [job-02-construction-et-publication-image](./job-02-construction-et-publication-image/README.md) | `job-02-construction-et-publication-image` |

## Organisation du dépôt

```
Docker-Start/
├── README.md                        <- ce sommaire
├── job-01-welcome-to-docker/
│   ├── README.md                    <- le rendu détaillé du job
│   └── images/                      <- captures d'écran annotées dans le rendu
└── job-02-construction-et-publication-image/
    ├── README.md
    ├── images/
    └── welcome-to-docker/           <- le projet cloné, avec mes modifications
```

## Convention de travail

- **Branches** : une branche par job, nommée d'après le sujet traité
  (ex. `job-01-welcome-to-docker`).
- **Commits** : messages explicites décrivant l'action réalisée
  (ex. `Ajout des captures des commandes Docker de base`).
- **Fusion** : merge dans `main` en `--no-ff` pour conserver l'historique de la
  branche dans le graphe Git.

## Auteur

Mickaël AY — [@Mickael-AY](https://github.com/Mickael-AY)
