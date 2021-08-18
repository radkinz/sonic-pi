#get some drums
in_thread do
  loop do
    sample :drum_bass_hard
    sleep 1
  end
end

in_thread do
  loop do
    sample :drum_snare_soft
    sleep 0.5
  end
end

in_thread do
  loop do
    sample :drum_cymbal_pedal
    sleep 0.25
  end
end

#get some base
in_thread do
  loop do
    sample :bass_hit_c
    sleep 1
  end
end

#get notes
in_thread do
  loop do
    synth :chiplead, note: (octs :e3, 3).tick, release: 0.4, amp: 0.4, cutoff: rrand(70, 130)
    sleep 0.125
  end
end

in_thread do
  use_synth :prophet
  loop do
    [1, 3, 6, 4].each do |d|
      (range -3, 3).each do |i|
        play_chord (chord_degree d, :c, :major, 3, invert: i)
        sleep 0.25
      end
    end
  end
end


