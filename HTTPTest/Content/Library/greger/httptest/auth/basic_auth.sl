namespace: greger.httptest.auth
flow:
  name: basic_auth
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
        navigate:
          f3249a0c-a6ec-842d-f1cf-dc4081a57d86:
            targetId: a4cbb9a8-14df-7a01-6c81-7bbb69fefa49
            port: SUCCESS
    results:
      SUCCESS:
        a4cbb9a8-14df-7a01-6c81-7bbb69fefa49:
          x: 468
          'y': 82
