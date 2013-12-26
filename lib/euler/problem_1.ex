defmodule Euler.Problem1 do
  @moduledoc """

    # Problem 1: Multiples of 3 and 5

    If we list all the natural numbers below 10 that are multiples of 3 or 5, we
    get 3, 5, 6 and 9. The sum of these multiples is 23.

    Find the sum of all the multiples of 3 or 5 below 1000.

    ## Example

      iex> Euler.Problem1.the_answer
      233168

  """
  def the_answer do
    sum_of_multiples_below(1000)
  end

  @doc """

    If we list all the natural numbers below 10 that are multiples of 3 or
    5, we get 3, 5, 6 and 9.
    (...)

    ## Example

      iex> Euler.Problem1.multiples_of_3_or_5(10)
      [3, 5, 6, 9]

  """
  def multiples_of_3_or_5(max_number) do
    Enum.reject (1..(max_number-1)), fn(x) ->
      (rem(x, 5) != 0) && (rem(x, 3) != 0)
    end
  end

  @doc"""

    (...)
    The sum of these multiples is 23.
    (...)

    ## Example

      iex> Euler.Problem1.sum_of_multiples_below(10)
      23

  """
  def sum_of_multiples_below(number) do
    Enum.reduce multiples_of_3_or_5(number), fn(x, acc) ->
      x + acc
    end
  end
end
