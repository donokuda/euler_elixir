defmodule Euler.Problem3 do
  @moduledoc """

  # Problem 3: Largest prime factor

  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?

  ## Example

    iex> Euler.Problem3.the_answer
    6857

  """
  def the_answer do

  end

  @doc """

  Return a list of prime factors for an integer

  ## Examples

    iex> Euler.Problem3.prime_factors(48)
    [2, 3]

    iex> Euler.Problem3.prime_factors(13195)
    [5, 7, 13, 29]

  """
  def prime_factors(integer) do
    factor_tree(integer) |> Enum.uniq
  end

  @doc"""

  Returns a factor tree for an integer

  ## Example

    iex> Euler.Problem3.factor_tree(48)
    [2, 2, 2, 2, 3]

  """
  def factor_tree(integer) do
    if Integer.even?(integer) do
      factor_tree(integer, [2, div(integer, 2)])
    end
  end

  def factor_tree(integer, array) do
    last_num = List.last(array)
    if Integer.even?(last_num) do
      old_array = List.delete_at(array, -1)
      new_array = old_array ++ [2, div(last_num, 2)]

      factor_tree(List.last(new_array), new_array)
    else
      array
    end
  end
end
