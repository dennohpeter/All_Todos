@moduledoc """
  Gets input/url from console using OptionParser.parse()
"""

defmodule Todo.CLI do
  def main(args) do
    parse_arg(args)
    |> process
  end
def parse_arg(args) do
  parse = OptionParser.parse(args, switches: [help: :boolean],
  aliases: [h: :help])
  case parse do
    {[help: true], _,_} -> :help
    {_,[url], _} -> {url}
  end
end
def process({url}) do
  Todo.Fetcher.fetch(url)
  |> Todo.Extract.extract_required
end
def process(:help) do
  IO.puts """
  trial
  ---------------
  Usage: all_todos <url>
  Example: all_todos https://jsonplaceholder.typicode.com/todos
  """
end
end
