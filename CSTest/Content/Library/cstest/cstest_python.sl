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
        navigate:
          1698f67d-bff8-7f53-845f-241f5f881fb2:
            targetId: 0ef869ee-b8ed-236b-dc2a-0582832c1354
            port: SUCCESS
    results:
      SUCCESS:
        0ef869ee-b8ed-236b-dc2a-0582832c1354:
          x: 400
          'y': 150
