function rename-current-window
# #1 - new name

wmctrl -r ':ACTIVE"' -T "$argv"

end
