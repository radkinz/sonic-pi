use_bpm 192

#verse
8.times do
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
sleep 2
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

play chord(:F, :major), sustain: 2
sleep 3
play chord(:C, :major)
sleep 1
play chord(:C, :major)
sleep 1

4.times do
  play chord(:E, :minor)
  sleep 1
  play chord(:A, :minor)
  sleep 1
end