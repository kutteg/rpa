namespace: greger.test
flow:
  name: test_flow
  workflow:
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '1'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      sleep:
        x: 240
        'y': 80
        navigate:
          10f4c191-5521-2c03-1061-ff25929a77cd:
            targetId: 7fe8b41a-ab9c-0d1e-9ea8-aaf50a33fb34
            port: SUCCESS
    results:
      SUCCESS:
        7fe8b41a-ab9c-0d1e-9ea8-aaf50a33fb34:
          x: 480
          'y': 160
