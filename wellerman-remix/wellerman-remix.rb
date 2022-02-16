use_bpm 210

#percussion
live_loop :drums do
  sample :drum_heavy_kick
  sleep 2
end

sleep 4

live_loop :moredrums do
  sample :bd_ada
  sleep 2
end

live_loop :disturbance do
  if one_in(5)
    sample :mehackit_phone2, rate: 5, amp: 0.8
  end
  sleep 6
end

sleep 8

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 1
end

#verse
live_loop :song do
  2.times do
    8.times do
      use_synth :blade
      use_octave 0
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
    sleep 1
  end
  
  #interlude
  
  #random disturbance
  sample :misc_crow
  sleep 2
  
  chords = [(chord :C, :minor7), (chord :Ab, :major7), (chord :Eb, :major7), (chord :Bb, "7")].ring
  c = chords[0]
  
  8.times do
    use_synth :fm
    use_octave -2
    3.times do
      play c[0], amp: 5# play the first note of the chord
      sleep 1
    end
    play c[2], amp: 5# play the third note of the chord
    sleep 0.5
    play c[1], amp: 5# # play the second note of the chord
    sleep 0.5
    c = chords.tick
  end
  
end

