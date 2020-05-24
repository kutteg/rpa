namespace: greger.calctest
flow:
  name: calc_flow
  inputs:
    - input: '20'
  workflow:
    - calc_action:
        do:
          greger.calctest.calc_action:
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
        x: 149
        'y': 150
        navigate:
          f149de03-9247-ca29-a3e2-209eeb7492b2:
            targetId: db73f396-793b-9d93-a08a-73df4176588b
            port: SUCCESS
          c97f34ee-e248-8135-2e32-25260d6947c2:
            targetId: db73f396-793b-9d93-a08a-73df4176588b
            port: WARNING
    results:
      SUCCESS:
        db73f396-793b-9d93-a08a-73df4176588b:
          x: 438.0247497558594
          'y': 148.9158477783203
