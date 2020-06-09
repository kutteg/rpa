namespace: greger.termtest
flow:
  name: rumba_user_delete_flow
  inputs:
    - user: SYSAD
    - password:
        default: SYSAD
        sensitive: true
    - application: ACCT
    - useraccount: '10001'
  workflow:
    - rumba_user_delete_action:
        do:
          greger.termtest.rumba_user_delete_action:
            - user: '${user}'
            - password: '${password}'
            - application: '${application}'
            - useraccount: '${useraccount}'
        publish:
          - status
        navigate:
          - SUCCESS: string_occurrence_counter
          - WARNING: string_occurrence_counter
          - FAILURE: on_failure
    - string_occurrence_counter:
        do:
          io.cloudslang.base.strings.string_occurrence_counter:
            - string_in_which_to_search: '${status}'
            - string_to_find: COMPLETED
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      rumba_user_delete_action:
        x: 82
        'y': 224
      string_occurrence_counter:
        x: 319
        'y': 220
        navigate:
          983290d0-26c1-cc12-a65b-c500dcbe4e0f:
            targetId: e9db17c5-9ac8-9324-9297-4590fe9210f9
            port: SUCCESS
    results:
      SUCCESS:
        e9db17c5-9ac8-9324-9297-4590fe9210f9:
          x: 537
          'y': 226
