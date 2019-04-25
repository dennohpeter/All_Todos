defmodule Todo.Extract do
  def extract_required(map) do
    {:ok, body} = map
    IO.puts body["title"]
  end
end
