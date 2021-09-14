namespace: greger.httptest
flow:
  name: ssx_trigger_activitie_flow
  workflow:
    - http_client_post:
        do:
          io.cloudslang.base.http.http_client_post:
            - url: 'https://rpa.hpeswlab.net:8446/oo-ssx/rest/v0/activities'
            - auth_type: basic
            - username: greger
            - password:
                value: Cloud_123
                sensitive: true
            - trust_all_roots: 'true'
            - body: |-
                {
                  "scenarioId": 1,
                  "scenarioInputsValue": {},
                  "triggerName": "Excel_Data_from_RPA"
                }
            - content_type: application/json
        publish:
          - response_headers
          - return_json: '${return_result}'
        navigate:
          - SUCCESS: get_header_cookie
          - FAILURE: on_failure
    - get_header_cookie:
        do:
          io.cloudslang.base.http.get_header_value:
            - response_headers: '${response_headers}'
            - header_name: Set-Cookie
        navigate:
          - SUCCESS: validate_json
          - FAILURE: on_failure
    - validate_json:
        do:
          io.cloudslang.base.json.validate_json:
            - json_input: '${return_json}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      http_client_post:
        x: 60
        'y': 81
      get_header_cookie:
        x: 252
        'y': 77
      validate_json:
        x: 444
        'y': 77
        navigate:
          77a48b6b-0a00-fcb5-86c1-49101e80a1c3:
            targetId: a4cbb9a8-14df-7a01-6c81-7bbb69fefa49
            port: SUCCESS
    results:
      SUCCESS:
        a4cbb9a8-14df-7a01-6c81-7bbb69fefa49:
          x: 438
          'y': 320
