namespace: greger.webtest
flow:
  name: web_flow
  inputs:
    - suchtext: Micro Focus RPA
  workflow:
    - web_action:
        do:
          greger.webtest.web_action:
            - suchtext: '${suchtext}'
        publish:
          - ergebnis: '${result}'
        navigate:
          - SUCCESS: get_by_index
          - WARNING: get_by_index
          - FAILURE: on_failure
    - get_by_index:
        do:
          io.cloudslang.base.lists.get_by_index:
            - list: '${ergebnis}'
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
      web_action:
        x: 129
        'y': 218
      get_by_index:
        x: 364
        'y': 216
        navigate:
          f08c3dda-73b9-520e-052a-720c5f03f49a:
            targetId: 29e02643-c7d7-3e5b-613d-aa687c79a8fe
            port: SUCCESS
    results:
      SUCCESS:
        29e02643-c7d7-3e5b-613d-aa687c79a8fe:
          x: 596
          'y': 220
