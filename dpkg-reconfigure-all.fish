function dpkg-reconfigure-all
  # From Ubuntu 16.04 there is no command to reinitialize all packages.
  # But this command is very useful for fixing broken updates
  # So providing it instead of distribution
  for i in (dpkg -l | grep '^ii' | awk '{print $2}')
    echo "Reconfiguring: $i"
    sudo dpkg-reconfigure $i
  end

end
