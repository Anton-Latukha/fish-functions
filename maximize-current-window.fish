function maximize-current-window

wmctrl -r ':ACTIVE:' -b add,maximized_vert && wmctrl -r ':ACTIVE:' -b add,maximized_horz

end
