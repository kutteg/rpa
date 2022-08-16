namespace: greger.webtest
flow:
  name: excel_edge_flow
  inputs:
    - suchtext: woman
  workflow:
    - get_cell:
        do:
          io.cloudslang.base.excel.get_cell:
            - excel_file_name: "C:\\RPAInput\\webtest.xlsx"
            - worksheet_name: Comedian
            - has_header: 'yes'
            - first_row_index: '0'
            - row_index: null
            - column_index: '0'
            - row_delimiter: ;
            - column_delimiter: '|'
        publish:
          - suchtext: "${return_result.rstrip(';')}"
        navigate:
          - SUCCESS: edge_flow
          - FAILURE: on_failure
    - edge_flow:
        do:
          greger.webtest.edge_flow:
            - suchtext: '${suchtext}'
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      get_cell:
        x: 200
        'y': 160
      edge_flow:
        x: 480
        'y': 160
        navigate:
          0606a4b0-6c3f-092c-447d-d810e0a8a507:
            targetId: aa2d922d-9efd-e3e6-5679-1ea5f0b036b6
            port: SUCCESS
    results:
      SUCCESS:
        aa2d922d-9efd-e3e6-5679-1ea5f0b036b6:
          x: 680
          'y': 160
