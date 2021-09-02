#go faster
use_bpm 100

#percussion
live_loop :drums do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.25
end

#main track
live_loop :melody do
  with_fx :wobble do
    with_fx :slicer do
      with_fx :reverb do
        use_synth :hoover
        if one_in(6)
          use_transpose 0
        else
          if one_in(2)
            use_transpose 1
          else
            use_transpose 2
          end
        end
        play_pattern_timed [:c4, :e4, :f4, :g4, :f4, :e4, :f4, :g4, :f4, :e4, :f4],
          [0.25, 0.25, 0.25, 1.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25],
          attack: 0, release: 0.2, amp: 0.5
      end
    end
  end
end





