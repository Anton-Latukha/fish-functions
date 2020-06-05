function df

  # sort by 6-th columh humanly
  command df -h $argv | command sort -hk6

end
