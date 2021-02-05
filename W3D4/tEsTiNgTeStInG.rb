  require_relative 'stack'
  require_relative 'que'
  require_relative 'map'
  
  #test out the Stack class neato!
  
  beets_by_tray = Stack.new

  beets_by_tray.push(5)
  beets_by_tray.push(999)
  beets_by_tray.push("luftbaloons")
  beets_by_tray.push(:verdad)
  
  p beets_by_tray.pop
  p beets_by_tray.pop
  p beets_by_tray.pop
  p beets_by_tray.pop
  p beets_by_tray.pop

  beets_by_tray.push("luftbaloons")
  beets_by_tray.push("luftbaloons")

  p beets_by_tray.pop
  p beets_by_tray.peek

  #How bout the Que Class

  waiting_for_Godot = Queue.new

  waiting_for_Godot.enqueue("Samuel Beckett")
  waiting_for_Godot.enqueue("Didi")
  waiting_for_Godot.enqueue("Gogo")
  waiting_for_Godot.enqueue("theatre")

  p waiting_for_Godot.dequeue
  p waiting_for_Godot.dequeue
  p waiting_for_Godot.dequeue
  p waiting_for_Godot.peek

  #Last Notbut Lease: Map Class

dont_get_lost = Map.new

dont_get_lost.set("compass", "344.4")
dont_get_lost.set("roads", "none")

p dont_get_lost.show

p dont_get_lost.delete("compass")

p dont_get_lost.show

p dont_get_lost.get("roads")



