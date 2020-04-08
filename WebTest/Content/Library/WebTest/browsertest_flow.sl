namespace: WebTest
flow:
  name: browsertest_flow
  inputs:
    - search_text: RPI
  workflow:
    - browsertest:
        do:
          WebTest.browsertest:
            - search: '${search_text}'
        publish:
          - result_text: '${result}'
        navigate:
          - SUCCESS: get_by_index
          - WARNING: SUCCESS
          - FAILURE: on_failure
    - get_by_index:
        do:
          io.cloudslang.base.lists.get_by_index:
            - list: '${result_text}'
            - delimiter: ' '
            - index: '1'
        publish:
          - return_amount: '${return_result}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      browsertest:
        x: 210
        'y': 235
        navigate:
          531d9670-ecd6-50e6-f466-2cf9ebc654ae:
            targetId: 13dcb132-42ba-20f2-d386-da20e427593c
            port: WARNING
      get_by_index:
        x: 389.0247497558594
        'y': 131.02476501464844
        navigate:
          08414f8b-76cb-1601-cec4-37ccb25d8cb9:
            targetId: 13dcb132-42ba-20f2-d386-da20e427593c
            port: SUCCESS
    results:
      SUCCESS:
        13dcb132-42ba-20f2-d386-da20e427593c:
          x: 573.0247802734375
          'y': 228.02474975585938
