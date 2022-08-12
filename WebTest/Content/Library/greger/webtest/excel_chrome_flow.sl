namespace: greger.webtest
flow:
  name: excel_chrome_flow
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
          - SUCCESS: chrome_flow
          - FAILURE: on_failure
    - chrome_flow:
        do:
          greger.webtest.chrome_flow:
            - suchtext: '${suchtext}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_cell:
        x: 55
        'y': 192
      chrome_flow:
        x: 332.0235595703125
        'y': 203.01885986328125
        navigate:
          14f9661d-bfc7-2499-4925-36460e0ea862:
            targetId: 974d7a2a-6699-1f50-2977-245c830c46b6
            port: SUCCESS
    results:
      SUCCESS:
        974d7a2a-6699-1f50-2977-245c830c46b6:
          x: 621
          'y': 193
