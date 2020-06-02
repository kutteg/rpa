namespace: greger.office365test
flow:
  name: office365_petr_flow
  workflow:
    - get_email:
        do:
          io.cloudslang.microsoft.office365.get_email:
            - tenant: rpamf.onmicrosoft.com
            - client_id: 4c800826-f5c8-44a1-b779-2f333099823d
            - client_secret:
                value: 'JHAH]Yqe3*97FA0kb+]lO0X5][5iNw_]'
                sensitive: true
            - email_address: daniel@rpamf.onmicrosoft.com
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
          x: 465
          'y': 173
