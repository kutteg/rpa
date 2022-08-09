namespace: greger.hydactest
flow:
  name: search_flow
  inputs:
    - search: Raspberry Pi
  workflow:
    - search_action:
        do:
          greger.hydactest.search_action:
            - search: '${search}'
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
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      search_action:
        x: 176.02357482910156
        'y': 206.81130981445312
      get_by_index:
        x: 366.0235595703125
        'y': 87.01885986328125
        navigate:
          8cfd183f-382f-cbac-59a0-96630fe34e8b:
            targetId: a55a3733-b1dd-bc3f-b6eb-9feb4b6d6783
            port: SUCCESS
    results:
      SUCCESS:
        a55a3733-b1dd-bc3f-b6eb-9feb4b6d6783:
          x: 585
          'y': 211
