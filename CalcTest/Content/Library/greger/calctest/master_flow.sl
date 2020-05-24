namespace: greger.calctest
flow:
  name: master_flow
  workflow:
    - get_cell:
        do:
          io.cloudslang.base.excel.get_cell:
            - excel_file_name: "C:\\RPAInput\\calctest.xlsx"
            - worksheet_name: Comedian
            - has_header: 'yes'
            - first_row_index: '0'
            - column_index: '0'
            - row_delimiter: ;
            - column_delimiter: '|'
        publish:
          - celsius: "${return_result.rstrip(';').rstrip('.0')}"
        navigate:
          - SUCCESS: calc_flow
          - FAILURE: on_failure
    - calc_flow:
        do:
          greger.calctest.calc_flow:
            - input: '${celsius}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      calc_flow:
        x: 352
        'y': 208
        navigate:
          b7d258dd-d068-7a1a-f4c3-ef35a63122d3:
            targetId: 9ca141db-c642-9bdc-abab-12b124dd6c63
            port: SUCCESS
      get_cell:
        x: 121
        'y': 217
    results:
      SUCCESS:
        9ca141db-c642-9bdc-abab-12b124dd6c63:
          x: 579.0247802734375
          'y': 206.9158477783203
