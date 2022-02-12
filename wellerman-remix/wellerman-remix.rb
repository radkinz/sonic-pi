use_bpm 192

#percussion
live_loop :drums do
  sample :drum_heavy_kick
  sleep 2
end

#verse
sleep 8
8.times do
  use_synth :blade
  play chord(:A, :minor)
  sleep 1
end

4.times do
  play chord(:D, :minor)
  sleep 1
  play chord(:A, :minor)
  sleep 1
end

8.times do
  play chord(:A, :minor)
  sleep 1
end

4.times do
  play chord(:E, :major)
  sleep 1
  play chord(:A, :minor)
  sleep 1
end

#chorus
play chord(:F, :major), sustain: 2
sleep 3
play chord(:C, :major)
sleep 1
play chord(:C, :major)
sleep 1

6.times do
  play chord(:D, :minor)
  sleep 1
  play chord(:A, :minor)
  sleep 1
end

4.times do
  play chord(:F, :major)
  sleep 1
  play chord(:C, :major)
  sleep 1
end
3.times do
  play chord(:E, :minor)
  sleep 1
  play chord(:A, :minor)
  sleep 1
end