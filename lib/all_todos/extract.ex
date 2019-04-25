defmodule Todo.Extract do
  def extract_required(map) do
    All_titles = [] 
    {:ok, body} = map
    IO.puts body["title"]
  end
end
