use_bpm 192

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