namespace: greger.httptest
flow:
  name: ucmdb_create_app_flow
  inputs:
    - customer: '1'
    - ucmdbservice: KGT1
    - server1: kgs1
    - server2: kgs2
  workflow:
    - ucmdb_get_token:
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
          - SUCCESS: json_path_query_token
          - FAILURE: on_failure
    - json_path_query_token:
        do:
          io.cloudslang.base.json.json_path_query:
            - json_object: '${return_json}'
            - json_path: $.token
        publish:
          - token: "${return_result.rstrip('\"').lstrip('\"')}"
        navigate:
          - SUCCESS: ucmdb_create_app
          - FAILURE: on_failure
    - ucmdb_create_app:
        do:
          io.cloudslang.base.http.http_client_post:
            - url: 'https://psvm91.bbntc.hpeswlab.net:22116/rest-api/dataModel'
            - trust_all_roots: 'true'
            - x_509_hostname_verifier: allow_all
            - headers: "${'Authorization: Bearer %s' % token}"
            - body: |-
                {
                  "cis": [
                        {
                          "ucmdbId": "tmp4dc01bee04c76cc0ac4bb069f46e8b55",
                          "type": "business_application",
                          "properties": {"name":"KG1"}
                        },
                        {
                          "ucmdbId": "tmp4dc01bee04c76cc0ac4bb069f46e8b56",
                          "type": "node",
                          "properties": {"name":"server1"}
                        },
                        {
                          "ucmdbId": "tmp4dc01bee04c76cc0ac4bb069f46e8b57",
                          "type": "node",
                          "properties": {"name":"server2"}
                        }
                    ],
                    "relations": [
                        {
                          "ucmdbId": "tmpa4dc01bee04c76cc0ac4bb069f46e8b58",
                          "type": "usage",
                          "properties": {"name":"relation_1"},
                          "end1Id":"tmp4dc01bee04c76cc0ac4bb069f46e8b55",
                          "end2Id":"tmp4dc01bee04c76cc0ac4bb069f46e8b56"
                        },
                        {
                          "ucmdbId": "tmpa4dc01bee04c76cc0ac4bb069f46e8b59",
                          "type": "usage",
                          "properties": {"name":"relation_2"},
                          "end1Id":"tmp4dc01bee04c76cc0ac4bb069f46e8b55",
                          "end2Id":"tmp4dc01bee04c76cc0ac4bb069f46e8b57"
                        }
                    ]
                }
            - content_type: application/json
        publish:
          - response_headers
          - return_json: '${return_result}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      ucmdb_create_app:
        x: 428
        'y': 83
        navigate:
          166ee640-9db0-1eef-ff01-158ac7a0d3e4:
            targetId: a4cbb9a8-14df-7a01-6c81-7bbb69fefa49
            port: SUCCESS
      json_path_query_token:
        x: 246
        'y': 84
      ucmdb_get_token:
        x: 72
        'y': 82
    results:
      SUCCESS:
        a4cbb9a8-14df-7a01-6c81-7bbb69fefa49:
          x: 596
          'y': 83
