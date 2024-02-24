module KnitrEngine
  function display(x)
    io = IOBuffer()
    show(IOContext(io, :limit => true, :displaysize => (20, 40)), "text/plain", x)
    String(take!(io))
  end

  # TODO: different display function for plot
end
