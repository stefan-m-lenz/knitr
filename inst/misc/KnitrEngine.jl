module KnitrEngine

  function run(code)
    # Execute code in Main module
    result = Main.RConnector.mainevalcmd(code)

    # get result as text and return it
    io = IOBuffer()
    show(IOContext(io, :limit => true, :displaysize => (20, 40)), "text/plain", result)
    return String(take!(io))

    # TODO if result is a plot, save it as a file and return a link to it
  end

end
