defmodule F32TensorToU8Test do
  use ExUnit.Case
  doctest F32TensorToU8

  test "f32 tensor to u8" do
    data = File.read!(Path.join([__DIR__, "f32-tensor.bin"]))
    t = Nx.from_binary(data, {:f, 32})
    _u8_binary =
      t
      |> Nx.reshape({714, 484, 3})
      |> Nx.multiply(255)
      |> Nx.clip(0, 255)
      |> Nx.as_type({:u, 8})
      |> Nx.to_binary()
  end
end
