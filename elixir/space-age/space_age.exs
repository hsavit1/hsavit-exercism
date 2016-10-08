defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :neptune | :uranus

  def age_on_earth(input) do
    input / 31557600.0
  end

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do

    case planet do

      :mercury -> age_on_earth(seconds) / 0.2408467
      :venus -> age_on_earth(seconds) / 0.61519726
      :earth -> age_on_earth(seconds)
      :mars -> age_on_earth(seconds) / 1.8808158
      :jupiter -> age_on_earth(seconds) / 11.862615
      :saturn -> age_on_earth(seconds) / 29.447498
      :neptune -> age_on_earth(seconds) / 84.016846
      :uranus -> age_on_earth(seconds) / 164.79132

    end
  end
end
