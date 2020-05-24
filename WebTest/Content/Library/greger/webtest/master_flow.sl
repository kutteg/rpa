namespace: greger.webtest
flow:
  name: master_flow
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
          - SUCCESS: web_flow
          - FAILURE: on_failure
    - web_flow:
        do:
          greger.webtest.web_flow:
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
      web_flow:
        x: 350.0247497558594
        'y': 206.02476501464844
        navigate:
          54caed17-1ac1-4a8d-c2e8-63186ade8959:
            targetId: 974d7a2a-6699-1f50-2977-245c830c46b6
            port: SUCCESS
    results:
      SUCCESS:
        974d7a2a-6699-1f50-2977-245c830c46b6:
          x: 621
          'y': 193
