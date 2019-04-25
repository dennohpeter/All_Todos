defmodule AllTodosTest do
  use ExUnit.Case
  doctest AllTodos

  test "greets the world" do
    assert AllTodos.hello() == :world
  end
end
