namespace: greger
operation:
  name: cstest_python_operation
  inputs:
    - input_string
    - separator
  python_action:
    use_jython: false
    script: "# do not remove the execute function \ndef execute(input_string, separator): \n    # code goes here\n    start, sep, tail = input_string.partition(separator)\n    return { 'result_string': tail,\n             'value': 'myvalue'}\n    \n# you can add additional helper methods below."
  outputs:
    - result_string: '${result_string}'
    - value: '${value}'
  results:
    - SUCCESS
