#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <new_config_file>"
  exit 1
fi

NEW_CONFIG_FILE=$1

PROVISIONFILE="provisionfile"

if [ ! -f "$PROVISIONFILE" ]; then
  echo "Erreur: $PROVISIONFILE n'existe pas."
  exit 1
fi

sed -i "3s|provision.yml|$NEW_CONFIG_FILE|" "$PROVISIONFILE"

echo "Le fichier '$PROVISIONFILE' a été mis à jour avec '$NEW_CONFIG_FILE' à la ligne 3."

vagrant up

sed -i "3s|$NEW_CONFIG_FILE|provision.yml|" "$PROVISIONFILE"

echo "Le fichier '$PROVISIONFILE' a été restauré avec 'provision.yml' à la ligne 3."