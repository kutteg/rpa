namespace: greger.webtest
flow:
  name: chrome_flow
  inputs:
    - suchtext: ein beliebiger suchtext
  workflow:
    - chrome_action:
        do:
          greger.webtest.chrome_action:
            - suchtext: '${suchtext}'
        publish:
          - anzahl
        navigate:
          - SUCCESS: get_by_index
          - WARNING: get_by_index
          - FAILURE: on_failure
    - get_by_index:
        do:
          io.cloudslang.base.lists.get_by_index:
            - list: '${anzahl}'
            - delimiter: ' '
            - index: '1'
        publish:
          - anzahl: '${return_result}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - anzahl: '${anzahl}'
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_by_index:
        x: 364
        'y': 217
        navigate:
          f08c3dda-73b9-520e-052a-720c5f03f49a:
            targetId: 29e02643-c7d7-3e5b-613d-aa687c79a8fe
            port: SUCCESS
      chrome_action:
        x: 149
        'y': 222
    results:
      SUCCESS:
        29e02643-c7d7-3e5b-613d-aa687c79a8fe:
          x: 596
          'y': 220
