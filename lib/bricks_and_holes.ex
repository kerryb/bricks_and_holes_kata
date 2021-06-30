defmodule BricksAndHoles do
  @doc """
  Check whether a brick of dimensions {x, y, z} can fit through a hole of
  dimensions {a, b}.

  ## Executable examples:

      iex> BricksAndHoles.fits?(1, 1, 1, 1, 1)
      true

      iex> BricksAndHoles.fits?(1, 2, 1, 1, 1)
      true

      iex> BricksAndHoles.fits?(1, 2, 2, 1, 1)
      false

  """
  def fits?(x, y, z, a, b) do
    #  check that the hole dimensions (smallest first) are at least as big as
    # the smallest two dimensions of the brick (also smallest first).
    # NB. lists are automatically compared one element at a time.
    Enum.sort([a, b]) >= [x, y, z] |> Enum.sort() |> Enum.take(2)
  end
end
