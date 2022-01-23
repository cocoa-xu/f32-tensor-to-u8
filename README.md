# F32TensorToU8

Reproduce the issue observed in [evision#35](https://github.com/cocoa-xu/evision/pull/35)

```shell
mix deps.get
mix test
```

`test/f32-tensor.bin` is the binary data from a tensor with type `{:f, 32}` and shape `{714, 484, 3}`. 

`test/f32_tensor_to_u8_test.exs` is the script to reproduce the linked issue.

