namespace: greger.hydactest
flow:
  name: suche_flow
  inputs:
    - suchtext: Hydac
  workflow:
    - suche_action:
        do:
          greger.hydactest.suche_action:
            - suche: '${suchtext}'
        publish:
          - google_string: '${suchergebnis}'
        navigate:
          - SUCCESS: get_by_index
          - WARNING: get_by_index
          - FAILURE: on_failure
    - get_by_index:
        do:
          io.cloudslang.base.lists.get_by_index:
            - list: '${google_string}'
            - delimiter: ' '
            - index: '1'
        publish:
          - anzahl: '${return_result}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      suche_action:
        x: 182.0330047607422
        'y': 278.01885986328125
      get_by_index:
        x: 425
        'y': 122
        navigate:
          5034b6f7-96b8-6ec5-4d48-a82e4ccb32ca:
            targetId: fcc66db3-a922-37af-490f-8d69ed2ce246
            port: SUCCESS
    results:
      SUCCESS:
        fcc66db3-a922-37af-490f-8d69ed2ce246:
          x: 685
          'y': 277
