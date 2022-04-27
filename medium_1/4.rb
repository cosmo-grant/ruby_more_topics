def collect_raptors(arr)
  yield(*arr)
end

birds = ['crow', 'finch', 'hawk', 'eagle']

collect_raptors(birds) do |_, _, *rest|
  puts rest.join(", ")
end