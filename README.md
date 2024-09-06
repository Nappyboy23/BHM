# Installation d'un Cluster MAPR et Automatisation avec Ansible


Introduction
Ce projet a pour objectif d'installer et configurer automatiquement un cluster Hadoop MAPR à l'aide de Ansible sur une infrastructure virtualisée, en ajoutant un nœud MAPR-DB. Ce cluster est conçu pour gérer et traiter de grandes quantités de données dans un environnement big data robuste.

Architecture du Projet
Système Hôte : Windows 10 (via Vagrant)
WSL : Sous-système Windows pour Linux (Ubuntu)
Cluster Hadoop : Composé de 4 nœuds virtuels initialement, avec ajout automatique d’un nœud MAPR-DB.
node01: elie.cluster
node02: djibril.cluster
node03: ariel.cluster
edge: edge.cluster
Nœud ajouté : dianedb.cluster (automatisé par script)
Déroulement du Projet
Le projet est décomposé en 4 étapes :

Préparation de l'environnement :

Installation de WSL et des dépendances nécessaires.
Configuration de l'utilisateur Ansible :

Génération de la clé RSA pour Ansible.
Mise à jour du fichier /etc/hosts avec les adresses des nœuds.
Provisionnement de l'infrastructure :

Création des VM avec Vagrant et ajustement des ressources (fichiers provision.yml et config_dbnode.yml).
Installation et configuration du cluster MAPR :

Déploiement automatisé de MAPR sur les nœuds via Ansible.
Fichiers Importants
provision.yml : Fichier de provisionnement des 4 nœuds.
add_dbnode.sh : Script pour l'ajout automatique du nœud MAPR-DB.
setup_ansible_user.sh : Script de configuration d'Ansible.
Défis Rencontrés
Gestion des ressources : Plusieurs déconnexions dues à la concurrence des ressources, nécessitant un ajustement des configurations.
Licence MAPR : Installation manuelle requise pour la licence.
Automatisation : Création de scripts personnalisés pour l'ajout automatique de nœuds.
Résultats Obtenus
Installation réussie : Cluster MAPR accessible via l'interface MCS à l'URL : https://192.168.50.199:8443/.
Automatisation optimisée : Installation et configuration entièrement automatisées grâce à Ansible.
Perspectives et Améliorations
Optimisation des performances : Affiner les scripts Ansible pour une meilleure gestion des ressources.
Extension du cluster : Tester la scalabilité en ajoutant davantage de nœuds.
Sécurité : Intégrer Kerberos et d'autres mesures de sécurité (ex : LDAP, Active Directory).
Conclusion
Le projet a permis de comprendre en profondeur l'automatisation avec Ansible et la gestion d'un cluster MAPR, bien que certaines erreurs mineures aient été rencontrées lors de l'exécution des playbooks.

Merci pour ta lecture !
Contact : Brahim Traore - brahimtraore2304@gmail.com
