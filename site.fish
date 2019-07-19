function site

  cd /home/pyro/src/mkdocs-blog/mkdocs-material
  git checkout master
  git pull u master
  git push f master
  git checkout custom
  git rebase master
  docker build -t mkdocs-material .
  cd /home/pyro/src/mkdocs-blog
  docker run --rm -it -p 8000:8000 -v (pwd):/docs mkdocs-material build
  docker run --rm -it -p 8000:8000 -v (pwd):/docs mkdocs-material

end
