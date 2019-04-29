@moduledoc """
Extracts title from a given manp
"""
defmodule Todo.Extract do
  def extract_required(map) do
    # All_titles = []
    {:ok, body} = map
    Enum.map(body, fn x -> x["title"] end)
    |> IO.inspect
    # IO.puts "Todo title is: " <> body["title"]
  end
end
