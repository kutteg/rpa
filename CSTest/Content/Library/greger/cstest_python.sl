namespace: greger
flow:
  name: cstest_python
  inputs:
    - list: eins zwei drei vier
  workflow:
    - length:
        do:
          io.cloudslang.base.strings.length:
            - origin_string: eins zwei drei vier
            - separator: zwei
            - stripUpTo: '${separator + origin_string.partition(separator)[2]}'
            - stripUpToAndIncluding: '${origin_string.partition(separator)[2]}'
            - stripAfter: '${origin_string.partition(separator)[0] + separator}'
            - stripAfterAndIncluding: '${origin_string.partition(separator)[0]}'
        publish:
          - output_0: output_0
        navigate:
          - SUCCESS: cstest_python_operation
    - cstest_python_operation:
        do:
          greger.cstest_python_operation:
            - input_string: '${list}'
            - separator: zwei
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 100
        'y': 150
      cstest_python_operation:
        x: 362.0247497558594
        'y': 137.02476501464844
        navigate:
          5087558c-1e35-35c9-cbea-d949dd0f5659:
            targetId: 0ef869ee-b8ed-236b-dc2a-0582832c1354
            port: SUCCESS
    results:
      SUCCESS:
        0ef869ee-b8ed-236b-dc2a-0582832c1354:
          x: 692
          'y': 147
