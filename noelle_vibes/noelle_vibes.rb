#go faster
use_bpm 100

#percussion
live_loop :drums do
  sample :drum_tom_mid_soft
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

live_loop :heavydrums do
  sample :drum_tom_lo_hard, release: 0.4
  sleep 3
end

live_loop :mehackit  do
  sample :mehackit_phone1
  sleep 3
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.25
end

live_loop :melody do
  use_synth :chiplead
  play_pattern_timed scale(:c3, :major), 0.125, release: 0.3, amp: 0.5
  sleep 3
end

live_loop :melody do
  use_synth :chiplead
  [1, 3, 6, 4].each do |d|
    (range -6, 6).each do |i|
      play_chord (chord_degree d, :e, :major, 3, invert: i)
      sleep 0.25
    end
  end
end

live_loop :note1 do
  sleep 4
  sample :misc_crow
  sleep 4
end




