namespace: cstest
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
          cstest.cstest_python_operation:
            - input_string: '${list}'
            - separator: zwei
        publish: []
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
        x: 390
        'y': 205
        navigate:
          b636cacb-1822-d8c3-f57e-bec39b814998:
            targetId: 0ef869ee-b8ed-236b-dc2a-0582832c1354
            port: SUCCESS
    results:
      SUCCESS:
        0ef869ee-b8ed-236b-dc2a-0582832c1354:
          x: 692
          'y': 147
