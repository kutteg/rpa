namespace: greger.termtest
flow:
  name: rumba_user_create_flow
  inputs:
    - user: SYSAD
    - password:
        default: SYSAD
        sensitive: true
    - application: ACCT
    - useraccount: '10001'
    - lastname: Schmid
    - firstname: Johann
    - city: Stuttgart
    - country: Deutschland
  workflow:
    - rumba_user_create_action:
        do:
          greger.termtest.rumba_user_create_action:
            - user: '${user}'
            - password:
                value: '${password}'
                sensitive: true
            - useraccount: '${useraccount}'
            - application: '${application}'
            - lastname: '${lastname}'
            - firstname: '${firstname}'
            - city: '${city}'
            - country: '${country}'
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
      rumba_user_create_action:
        x: 100
        'y': 246
      string_occurrence_counter:
        x: 358
        'y': 240
        navigate:
          ce563a4d-5b2b-34cb-384d-dc96ab5df83c:
            targetId: cadfaff8-6c0f-adc0-99b0-2974e9cf00a7
            port: SUCCESS
    results:
      SUCCESS:
        cadfaff8-6c0f-adc0-99b0-2974e9cf00a7:
          x: 608
          'y': 240
