# Welcome to Sonic Pi

2.times do
  play :B
  sleep 0.5
  play :A
  sleep 0.5
  play :G
  sleep 1
end
play :G, release: 2
sleep 1
play :A, release: 2
sleep 1
play :B
sleep 0.5
play :A
sleep 0.5
play :G

sample :vinyl_rewind
sleep 1

live_loop :flibble do
  sample :ambi_choir, rate: 0.3
  sample :drum_heavy_kick, rate: 5
  sleep 0.5
end

live_loop :drums do
  sleep 0.5
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_cymbal_soft
end

live_loop :chords do
  with_fx :reverb do
    use_synth :saw
    loop do
      play chord(:Db4, :minor)
      sleep 1.5
      play chord(:Db4, :minor)
      sleep 0.5
      play chord(:Db4, :minor)
      sleep 1.5
      play chord(:b3, :major)
      sleep 1.5
      play chord(:b3, :major)
      sleep 0.5
      play chord(:b3, :major)
      sleep 1.5
    end
  end
end

live_loop :basechords do
  use_synth :sine
  loop do
    play :Db2
    sleep 1.5
    play :Db2
    sleep 0.5
    play :Db2
    sleep 1.5
    play :b1
    sleep 1.5
    play :b1, release: 0.4
    sleep 0.5
    play :b1, release: 0.4
    sleep 1.5
  end
end

live_loop :mainvocal do
  use_synth :chiplead
  loop do
    play_pattern_timed chord(:Db5, :minor), 0.25, amp: 0.4, release: 0.4
  end
end



