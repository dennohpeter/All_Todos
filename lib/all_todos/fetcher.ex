defmodule Todo.Fetcher do
  def fetch(url) do
    url |> HTTPoison.get
    |> handle_json
end
def handle_json({:ok, %{status_code: 200, body: body }}) do
      {:ok, Poison.Parser.parse!(body)}
    end
def handle_json({:ok, %{status_code: 404}}) do
    IO.puts "Resource not found"
  end
def handle_json({_, %{status_code: _ }}) do
  IO.puts "Something went wrong. Please check your internet connection"
end
end
