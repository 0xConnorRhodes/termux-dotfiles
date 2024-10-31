#!/usr/bin/env ruby

require 'open3'

remote_path = 's:/zstore/media/music/music_library/music_library/'
local_folder = File.expand_path('~/storage/music/music_library/')

rsync_command = "rsync -rhP '#{remote_path}' '#{local_folder}'"

# Run the rsync command and display live output
Open3.popen3(rsync_command) do |stdin, stdout, stderr, wait_thr|
  Thread.new do
    stdout.each { |line| puts line }
  end
  Thread.new do
    stderr.each { |line| warn line }
  end
  wait_thr.value # Wait for the process to finish
end
