function xgrab-pulse

  # Use `arecord -L` to see devices
  # Allows longer buffer queues
  # Sync audio to video
  # Records noteboook default output
  ffmpeg -y -thread_queue_size 512 -video_size 1920x1080 -f x11grab -vsync 0 -i :0.0+0,0 -thread_queue_size 512 -f pulse -async 1 -i default -c:a flac -c:v libx264 -crf 0 $argv

end
