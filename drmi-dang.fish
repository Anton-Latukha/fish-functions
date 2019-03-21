function drmi-dang

  docker rmi (docker images -q -f dangling=true)

end
