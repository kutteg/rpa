namespace: greger.httptest
flow:
  name: ssx_get_activities_flow
  workflow:
    - http_get_basic_auth:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: 'https://rpa.hpeswlab.net:8446/oo-ssx/rest/v0/activities?filterRunStatus=FINISHED'
            - auth_type: basic
            - username: greger
            - password:
                value: Cloud@123
                sensitive: true
            - trust_all_roots: 'true'
            - x_509_hostname_verifier: allow_all
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
          - SUCCESS: json_path_query_items
          - FAILURE: on_failure
    - json_path_query_items:
        do:
          io.cloudslang.base.json.json_path_query:
            - json_object: '${return_json}'
            - json_path: $.items
        publish:
          - items: "${return_result.lstrip('[').rstrip(']')}"
        navigate:
          - SUCCESS: json_path_query_name
          - FAILURE: on_failure
    - json_path_query_name:
        do:
          io.cloudslang.base.json.json_path_query:
            - json_object: '${items}'
            - json_path: $.name
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      http_get_basic_auth:
        x: 75
        'y': 77
      get_header_cookie:
        x: 252
        'y': 77
      validate_json:
        x: 444
        'y': 77
      json_path_query_name:
        x: 261
        'y': 324
        navigate:
          7ca3406b-21e2-a339-8e8a-a053c6c0e054:
            targetId: a4cbb9a8-14df-7a01-6c81-7bbb69fefa49
            port: SUCCESS
      json_path_query_items:
        x: 447
        'y': 323
    results:
      SUCCESS:
        a4cbb9a8-14df-7a01-6c81-7bbb69fefa49:
          x: 72
          'y': 322
