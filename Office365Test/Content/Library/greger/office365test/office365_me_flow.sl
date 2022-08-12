namespace: greger.office365test
flow:
  name: office365_me_flow
  workflow:
    - get_email:
        do:
          io.cloudslang.microsoft.office365.get_email:
            - tenant: greger.onmicrosoft.com
            - login_type: Native
            - username: hcm@greger.onmicrosoft.com
            - password:
                value: kutte@123
                sensitive: true
            - client_id: d9de640a-b508-41b1-9309-bc8e95ddb486
            - email_address: hcm@greger.onmicrosoft.com
            - proxy_host: web-proxy.eu.softwaregrp.net
            - proxy_port: '8080'
            - trust_all_roots: 'true'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_email:
        x: 119.02476501464844
        'y': 172.02476501464844
        navigate:
          6a07b4e2-80fe-7665-c746-4ea34e3a3c55:
            targetId: 646f1834-978c-bc27-4bd1-32a92ceab2f1
            port: SUCCESS
    results:
      SUCCESS:
        646f1834-978c-bc27-4bd1-32a92ceab2f1:
          x: 465.0247497558594
          'y': 170.9158477783203
