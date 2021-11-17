defmodule StudyCodewarsTest do
  use ExUnit.Case
  doctest StudyCodewars

  test "greets the world" do
    assert StudyCodewars.hello() == :world
  end
end
