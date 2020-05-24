namespace: greger
flow:
  name: calc_flow
  inputs:
    - input: '15'
  workflow:
    - calc_action:
        do:
          greger.calc_action:
            - celsius: '${input}'
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
      calc_action:
        x: 124
        'y': 148
        navigate:
          0a63bc48-6a1b-52d1-c15e-b69f5cd29242:
            targetId: db73f396-793b-9d93-a08a-73df4176588b
            port: SUCCESS
          8a756614-ad75-3866-bfe9-a69326e143b6:
            targetId: db73f396-793b-9d93-a08a-73df4176588b
            port: WARNING
    results:
      SUCCESS:
        db73f396-793b-9d93-a08a-73df4176588b:
          x: 438.0247497558594
          'y': 148.9158477783203
