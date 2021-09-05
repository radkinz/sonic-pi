use_bpm 50

live_loop :choir do
  sample :ambi_choir, rate: 0.75, beat_stretch: 4, amp: 8
  sleep 4
end

live_loop :woosh do
  sample :ambi_swoosh
  sleep 1
end

live_loop :bass do
  sample :bass_woodsy_c, beat_stretch: 2, rate: 0.3, amp: 0.6
  sleep 2
end

live_loop :hihat do
  sample :drum_cymbal_pedal, amp: 0.5
  sleep 1
  sample :drum_cymbal_pedal, amp: 0.15
  sleep 1
  sample :drum_cymbal_pedal, amp: 0.25
  sleep 1
  sample :drum_cymbal_pedal, amp: 0.15
  sleep 1
end

live_loop :chord_progress do
  use_synth :hollow
  sleep 1
  play chord(:C, :major), amp: 4, decay: 1
  sleep 1
  play chord(:G, :major), amp: 4, decay: 0.5
  sleep 0.5
  play chord(:A, :minor), amp: 4, decay: 0.5
  sleep 0.5
  play chord(:E, :minor), amp: 4, decay: 1
  sleep 1
end

live_loop :vinyl do
  sample :vinyl_hiss, amp: 1.24, decay: 2
  sleep 1
end












