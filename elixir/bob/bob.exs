defmodule Bob do

  def isShouting(input) do
    String.upcase(input) == input and String.downcase(input) != input
  end

  def hey(input) do

    cond do
      String.ends_with? input, "?" -> "Sure."
      isShouting(input) -> "Whoa, chill out!"
      String.trim(input) == "" -> "Fine. Be that way!"
      true -> "Whatever."
    end
  end
end
