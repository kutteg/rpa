namespace: greger.azuretest
flow:
  name: instance_stop_flow
  inputs:
    - user: hcm@greger.onmicrosoft.com
    - pw:
        default: kE4./veEXB;_Jbd
        sensitive: true
  workflow:
    - get_auth_token:
        do:
          io.cloudslang.microsoft.azure.authorization.get_auth_token:
            - username: '${user}'
            - password:
                value: '${pw}'
                sensitive: true
            - client_id: d9de640a-b508-41b1-9309-bc8e95ddb486
            - proxy_host: web-proxy.eu.softwaregrp.net
            - proxy_port: '8080'
        publish:
          - auth_token
        navigate:
          - SUCCESS: stop_vm
          - FAILURE: on_failure
    - stop_vm:
        do:
          io.cloudslang.microsoft.azure.compute.virtual_machines.stop_vm:
            - subscription_id: 2e965587-a1cf-4b5f-8f25-721e61afe2d9
            - auth_token: '${auth_token}'
            - vm_name: cos
            - resource_group_name: test-rg
            - proxy_port: '8080'
            - proxy_host: web-proxy.eu.softwaregrp.net
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_auth_token:
        x: 101
        'y': 182
      stop_vm:
        x: 321
        'y': 183
        navigate:
          c3743469-0dda-511b-4eaa-de0374f6dd5b:
            targetId: ee712cd8-6f37-84a2-6454-5aa4419a0831
            port: SUCCESS
    results:
      SUCCESS:
        ee712cd8-6f37-84a2-6454-5aa4419a0831:
          x: 546
          'y': 179
