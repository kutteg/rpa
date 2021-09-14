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
        x: 162.02357482910156
        'y': 140.01885986328125
        navigate:
          07f933be-3049-599b-e3e2-193b8d77a3b6:
            targetId: db73f396-793b-9d93-a08a-73df4176588b
            port: SUCCESS
          c343e1be-ce62-e94f-89ac-44d35cbf1322:
            targetId: db73f396-793b-9d93-a08a-73df4176588b
            port: WARNING
    results:
      SUCCESS:
        db73f396-793b-9d93-a08a-73df4176588b:
          x: 438.0247497558594
          'y': 148.9158477783203
