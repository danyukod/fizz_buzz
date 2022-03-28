defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response =
        {:ok, [:fizz, :buzz, :fizz, :fizz, :buzz, :fizzbuzz, :buzz, :fizzbuzz, :fizzbuzz]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when an invalid file is provided, returns an error" do
      assert FizzBuzz.build("invalid.txt") == "Error reading the file: enoent"
    end
  end
end
