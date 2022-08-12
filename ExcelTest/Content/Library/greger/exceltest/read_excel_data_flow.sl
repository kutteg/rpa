namespace: greger.exceltest
flow:
  name: read_excel_data_flow
  workflow:
    - get_cell:
        do:
          io.cloudslang.base.excel.get_cell:
            - excel_file_name: "C:\\RPAInput\\exceltest.xlsx"
            - worksheet_name: Comedian
            - has_header: 'yes'
            - first_row_index: '0'
            - row_index: null
            - column_index: null
            - row_delimiter: ;
            - column_delimiter: '|'
        publish:
          - mylist: '${return_result}'
        navigate:
          - SUCCESS: row_iterator
          - FAILURE: on_failure
    - row_iterator:
        do:
          io.cloudslang.base.lists.list_iterator:
            - list: '${mylist}'
            - separator: ;
        publish:
          - myrow: '${result_string}'
        navigate:
          - HAS_MORE: sleep
          - NO_MORE: SUCCESS
          - FAILURE: on_failure
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '1'
        navigate:
          - SUCCESS: row_iterator
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_cell:
        x: 160.02476501464844
        'y': 152.02476501464844
      row_iterator:
        x: 380
        'y': 97
        navigate:
          3e5c04c1-2836-5b2f-56a4-ae12947ac172:
            targetId: 7b1af24a-9522-e9d6-3cf0-2c3f83d3d110
            port: NO_MORE
      sleep:
        x: 380
        'y': 304
    results:
      SUCCESS:
        7b1af24a-9522-e9d6-3cf0-2c3f83d3d110:
          x: 670.0247802734375
          'y': 189.9158477783203
