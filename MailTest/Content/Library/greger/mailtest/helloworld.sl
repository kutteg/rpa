namespace: greger.mailtest
flow:
  name: helloworld
  workflow:
    - helloworld:
        do:
          io.cloudslang.base.datetime.get_time:
            - locale_country: DE
            - timezone: CET
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_time:
        x: 280
        'y': 200
        navigate:
          6a45ba67-2239-4c79-8331-743055c20371:
            targetId: 2943010a-a9c3-b2e6-929e-2f30af3581f3
            port: SUCCESS
    results:
      SUCCESS:
        2943010a-a9c3-b2e6-929e-2f30af3581f3:
          x: 560
          'y': 200

