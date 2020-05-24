namespace: greger
flow:
  name: cstest
  inputs:
    - liste: eins zwei drei vier
    - begrenzer: ' '
    - index: '1'
  workflow:
    - get_by_index:
        do:
          io.cloudslang.base.lists.get_by_index:
            - list: '${liste}'
            - delimiter: '${begrenzer}'
            - index: '${index}'
        publish:
          - ruckwert: '${return_result}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - ergebnis: '${ruckwert}'
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_by_index:
        x: 210
        'y': 181
        navigate:
          957ad633-612a-dd93-de91-c3c1618e3384:
            targetId: b0337aa3-3639-d4d4-cefa-46ebd989faaf
            port: SUCCESS
    results:
      SUCCESS:
        b0337aa3-3639-d4d4-cefa-46ebd989faaf:
          x: 581.0247802734375
          'y': 190.9158477783203
