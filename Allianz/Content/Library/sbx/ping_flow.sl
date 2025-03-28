namespace: sbx
flow:
  name: ping_flow
  workflow:
    - ping_target_host:
        do:
          io.cloudslang.base.samples.utils.ping_target_host:
            - target_host: google.com
            - timeout: '80000'
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      ping_target_host:
        x: 320
        'y': 320
        navigate:
          566fa718-616e-59c1-861b-806f0d2e9f3e:
            targetId: e777dd00-26c6-0d0c-6cec-d877ab8f7630
            port: SUCCESS
    results:
      SUCCESS:
        e777dd00-26c6-0d0c-6cec-d877ab8f7630:
          x: 640
          'y': 320
