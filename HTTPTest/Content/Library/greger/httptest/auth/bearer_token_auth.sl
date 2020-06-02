namespace: greger.httptest.auth
flow:
  name: bearer_token_auth
  inputs:
    - customer: '1'
  workflow:
    - http_client_post:
        do:
          io.cloudslang.base.http.http_client_post:
            - url: 'https://psvm91.bbntc.hpeswlab.net:22116/rest-api/authenticate'
            - trust_all_roots: 'true'
            - x_509_hostname_verifier: allow_all
            - body: '{    "username": "sysadmin",    "password": "Vmware2014.",    "repository": "UCMDB",    "clientContext": "1"}'
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
        publish:
          - session: '${result}'
        navigate:
          - SUCCESS: json_path_query_token
          - FAILURE: on_failure
    - json_path_query_token:
        do:
          io.cloudslang.base.json.json_path_query:
            - json_object: '${return_json}'
            - json_path: $.token
        publish:
          - token: '${return_result}'
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
        x: 72
        'y': 82
      get_header_cookie:
        x: 252
        'y': 80
      json_path_query_token:
        x: 434
        'y': 83
        navigate:
          0136b85b-cef1-9f7b-c40e-8912647ad480:
            targetId: a4cbb9a8-14df-7a01-6c81-7bbb69fefa49
            port: SUCCESS
    results:
      SUCCESS:
        a4cbb9a8-14df-7a01-6c81-7bbb69fefa49:
          x: 596
          'y': 83
