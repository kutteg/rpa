namespace: oe_converter
flow:
  name: oe_converter_flow
  workflow:
  - oe_converter:
      do:
        oe_converter.oe_converter: []
      publish:
      - fahrenheit
      - return_result
      - error_message
      navigate:
      - SUCCESS: SUCCESS
      - WARNING: SUCCESS
      - FAILURE: on_failure
  outputs:
  - fahrenheit
  - return_result
  - error_message
  results:
  - SUCCESS
  - FAILURE
