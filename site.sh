#!/bin/sh

SITE_DIRECTORY='/mnt/vault/important/Personal/Technical/Git/my/mkdocs-blog'


# Error codes:
ERR_NO_FOLDER=2

confirm() {
  # call with a prompt string or use a default
  read -r "${1:-Are you sure?} [y/N] : " response
  case "$response" in
    [yY][eE][sS]|[yY]) 
      true
        ;;
        *)
      false
        ;;
  esac
}


cd /mnt/vault/important/Personal/Technical/Git/my/mkdocs-blog || exit "$ERR_NO_FOLDER"
git status

ASK_response=''

ask() {
  read -r "${1:-Write input: } " ASK_response
}

confirm 'Do you want to continue pushing all changes to Git?' && \
  ask 'Commit message' && \
  git commit -a -m "$ASK_response" && \
  git push origin master && \
  cd ./site && \
  git commit -a -m "$ASK_response" && \
  git push origin master && \
  echo 'Actions completed successfully'
