namespace: greger.webtest
flow:
  name: edge_flow
  inputs:
    - suchtext: woman
  workflow:
    - edge_action:
        do:
          greger.webtest.edge_action:
            - suchtext: '${suchtext}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      edge_action:
        x: 121.02357482910156
        'y': 233.81130981445312
        navigate:
          606a0c09-afba-3c0b-6412-1eeb8bb689ee:
            targetId: aa2d922d-9efd-e3e6-5679-1ea5f0b036b6
            port: SUCCESS
          4fd68117-b9a7-ee85-5720-ba2ca24be82b:
            targetId: aa2d922d-9efd-e3e6-5679-1ea5f0b036b6
            port: WARNING
    results:
      SUCCESS:
        aa2d922d-9efd-e3e6-5679-1ea5f0b036b6:
          x: 350
          'y': 235
