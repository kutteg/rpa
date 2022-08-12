namespace: greger.saptest
flow:
  name: excel_sap_users_create_flow
  workflow:
    - get_cell:
        do:
          io.cloudslang.base.excel.get_cell:
            - excel_file_name: "C:\\RPAInput\\saptest_n.xlsx"
            - worksheet_name: Comedian
            - has_header: 'yes'
            - first_row_index: '0'
            - row_delimiter: ;
            - column_delimiter: '|'
        publish:
          - user_list: "${return_result.rstrip('|')}"
        navigate:
          - SUCCESS: row_iterator
          - FAILURE: on_failure
    - row_iterator:
        do:
          io.cloudslang.base.lists.list_iterator:
            - list: '${user_list}'
            - separator: ;
        publish:
          - userdata: '${result_string}'
        navigate:
          - HAS_MORE: sap_user_create_action
          - NO_MORE: SUCCESS
          - FAILURE: on_failure
    - sap_user_create_action:
        do:
          greger.saptest.sap_user_create_action:
            - user: "${userdata.split('|')[0]}"
            - password: "${userdata.split('|')[3]}"
            - firstname: "${userdata.split('|')[1]}"
            - lastname: "${userdata.split('|')[2]}"
            - email: "${userdata.split('|')[4]}"
        navigate:
          - SUCCESS: row_iterator
          - WARNING: row_iterator
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_cell:
        x: 131
        'y': 120
      row_iterator:
        x: 360
        'y': 123
        navigate:
          3ca398ab-8157-d609-d511-867e94fb0b57:
            targetId: 5dd67d63-95ba-15c2-52d6-e6cfd1df07c8
            port: NO_MORE
      sap_user_create_action:
        x: 358
        'y': 337
    results:
      SUCCESS:
        5dd67d63-95ba-15c2-52d6-e6cfd1df07c8:
          x: 597
          'y': 119
