samples = "C:/Users/Ruby/OneDrive/Documents/sonic_pi/new_beat/samples/Divergence_Mini_Noiiz/"

use_bpm 75

#external synth
live_loop :Synth do
  sample samples, "90_F_PluckedSynth_639", beat_stretch: 8, decay: 2, rate: -1, amp: 0.2
  sleep 8
end

#choir sound effect
live_loop :choir do
  sample :ambi_choir, beat_stretch: 6, rate: 0.75, amp: rrand(3, 7)
  sleep 2
end

use_bpm 70

#notes
live_loop :melody do
  use_synth :chiplead
  use_random_seed 310003
  ns = (scale :d2, :minor_pentatonic, num_octaves: 4).take(4)
  16.times do
    play ns.choose, detune: 12,  rate: 0.80, release: 0.2, amp: 1.5, amp: rand + 0.5, cutoff: rrand(70, 120), amp: 1.5
    sleep 0.125
  end
  sleep 4
end

live_loop :melody2 do
  sleep 2
  use_synth :chiplead
  use_random_seed 310003
  ns = (scale :e2, :minor_pentatonic, num_octaves: 4).take(4)
  16.times do
    play ns.choose, detune: 12, rate: 0.80, release: 0.2, amp: 1.5, amp: rand + 0.5, cutoff: rrand(70, 120), amp: 1.5
    sleep 0.125
  end
  sleep 2
end

live_loop :melody3 do
  sleep 4
  use_synth :chiplead
  use_random_seed 310003
  ns = (scale :c2, :minor_pentatonic, num_octaves: 4).take(4)
  16.times do
    play ns.choose, detune: 12, rate: 0.80, release: 0.2, amp: 1.5, amp: rand + 0.5, cutoff: rrand(70, 120), amp: 1.5
    sleep 0.125
  end
end

live_loop :scale do
  with_fx :wobble do
    with_fx :slicer do
      with_fx :reverb do
        use_synth :chiplead
        if one_in(6)
          use_transpose 0
        else
          if one_in(2)
            use_transpose 1
          else
            use_transpose 2
          end
        end
        play_pattern_timed chord(:E3, :m13), [0.25, 0.5], amp: 0.2
      end
    end
  end
end

counter = 0
live_loop :notes do
  use_synth :mod_dsaw
  play (scale :e3, :minor_pentatonic)[counter], release: 0.1, rate: 0.9
  counter += 1
  sleep 0.125
end

live_loop :ring do
  use_synth :sine
  play (scale :d3, :minor_pentatonic, num_octaves: 4).tick(:notes), release: 0.1, amp: 0.8, cutoff: rrand(60, 160)
  sleep (ring 0.125, 0.25).tick(:notes)
end

#percussion
live_loop :drums do
  sample :drum_heavy_kick, amp: 3
  sleep 1
end

live_loop :drum_snare_soft  do
  sample :drum_snare_soft, amp: 3
  sleep 0.5
end

live_loop :hihat  do
  sample :drum_cymbal_closed, amp: 3
  sleep 0.25
end
