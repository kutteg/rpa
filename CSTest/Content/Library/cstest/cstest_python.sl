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
            - stripUpToAndIncluding: "${origin_string.strip('zwei')}"
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 244.02474975585938
        'y': 182.02476501464844
        navigate:
          6a862e2e-94e2-e967-9c98-94bd243d2dea:
            targetId: d8dfe7e9-b651-0cbc-d987-f4b10df2fdae
            port: SUCCESS
    results:
      SUCCESS:
        d8dfe7e9-b651-0cbc-d987-f4b10df2fdae:
          x: 632.0247802734375
          'y': 193.9158477783203
