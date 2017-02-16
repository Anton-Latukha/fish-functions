function drmi-un
    docker rmi (docker images | grep '^<none>' | awk '{print $3}')
end
