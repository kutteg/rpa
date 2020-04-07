namespace: kg_converter
flow:
  name: kg_converter_flow
  inputs:
    - from_u: Yard
    - to_u: Centimeters
    - from_a: '1'
  workflow:
    - kg_converter_gui:
        do:
          kg_converter.kg_converter_gui:
            - from_amount: '1'
        publish:
          - output: '${result}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      kg_converter_gui:
        x: 188
        'y': 207
        navigate:
          c464511b-055c-c50c-2bec-43882a5d1c65:
            targetId: 32fa413d-2c5e-a823-6aff-c6f2feaf3e64
            port: SUCCESS
          ece4adbd-5552-2b88-caae-ecc55f5f7e25:
            targetId: 32fa413d-2c5e-a823-6aff-c6f2feaf3e64
            port: WARNING
    results:
      SUCCESS:
        32fa413d-2c5e-a823-6aff-c6f2feaf3e64:
          x: 590
          'y': 208
