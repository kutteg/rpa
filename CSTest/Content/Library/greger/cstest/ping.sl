namespace: greger.cstest
flow:
  name: ping
  workflow:
    - ping_target_host:
        do:
          io.cloudslang.base.samples.utils.ping_target_host: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ping_target_host:
        x: 240
        'y': 240
        navigate:
          d59a2d6a-56a3-faf3-dca8-db9753c2d5b4:
            targetId: 2ceed493-e941-2887-f3e6-7ba1ecd1a0dd
            port: SUCCESS
    results:
      SUCCESS:
        2ceed493-e941-2887-f3e6-7ba1ecd1a0dd:
          x: 440
          'y': 240
