use_bpm 110

#initialize drum beat array
# 1 = base, 2 = clap, 3 = open hat
a = [1, 0, 3, 0, 2, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 1]

# 1 = closed hat
b = [1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0]

live_loop :drums1 do
  #loop through drum beat array
  16.times do |i|
    #play sample if a[i] = 1
    sample :bd_haus if a[i] == 1
    sample :sn_dolf if a[i] == 2
    sample :drum_cymbal_pedal if a[i] == 3
    sleep 0.25
  end
end

live_loop :drums2 do
  #loop through drum beat array
  16.times do |i|
    #play sample if a[i] = 1
    sample :drum_cymbal_closed  if b[i] == 1
    sleep 0.25
  end
end

live_loop :melody do
  #spread creates an array of true/false values in a distributed relatively even way
  use_synth :chiplead
  use_random_seed 3397
  16.times do
    play scale(:c3, :major).choose, amp: 0.5, release: 0.5 if spread(11, 16).tick
    sleep 0.25
  end
end











