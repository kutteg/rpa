namespace: greger
flow:
  name: cstest_loop
  inputs:
    - list: '1,2,3,4'
  workflow:
    - length:
        loop:
          for: "value in list.split(',')"
          do:
            io.cloudslang.base.strings.length:
              - origin_string: '${value}'
          break: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      length:
        x: 140
        'y': 160
        navigate:
          f122f3b4-6ec0-f499-daf9-8fc05d105be0:
            targetId: 9029e56c-3403-3ca3-9f13-2e80a75c130f
            port: SUCCESS
    results:
      SUCCESS:
        9029e56c-3403-3ca3-9f13-2e80a75c130f:
          x: 494.0247802734375
          'y': 162.1633758544922
