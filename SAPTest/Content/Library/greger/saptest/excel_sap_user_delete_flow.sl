namespace: greger.saptest
flow:
  name: excel_sap_user_delete_flow
  workflow:
    - get_cell:
        do:
          io.cloudslang.base.excel.get_cell:
            - excel_file_name: "C:\\RPAInput\\saptest_1.xlsx"
            - worksheet_name: Comedian
            - has_header: 'yes'
            - first_row_index: '0'
            - row_delimiter: ;
            - column_delimiter: '|'
        publish:
          - user: "${return_result.split('|')[0]}"
          - firstname: "${return_result.split('|')[1]}"
          - lastname: "${return_result.split('|')[2]}"
          - password: "${return_result.split('|')[3]}"
          - email: "${return_result.split('|')[4].rstrip(';')}"
        navigate:
          - SUCCESS: sap_user_delete_flow
          - FAILURE: on_failure
    - sap_user_delete_flow:
        do:
          greger.saptest.sap_user_delete_flow:
            - user: '${user}'
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
        x: 131
        'y': 120
      sap_user_delete_flow:
        x: 359
        'y': 121
        navigate:
          4e423940-ca83-9faf-27f8-1c34509a0466:
            targetId: 5dd67d63-95ba-15c2-52d6-e6cfd1df07c8
            port: SUCCESS
    results:
      SUCCESS:
        5dd67d63-95ba-15c2-52d6-e6cfd1df07c8:
          x: 597
          'y': 119
