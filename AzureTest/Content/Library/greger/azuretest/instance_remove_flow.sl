namespace: greger.azuretest
flow:
  name: instance_remove_flow
  inputs:
    - user: hcm@greger.onmicrosoft.com
    - pw:
        default: kE4./veEXB;_Jbd
        sensitive: true
  workflow:
    - undeploy_vm:
        do:
          io.cloudslang.microsoft.azure.undeploy_vm:
            - subscription_id: 2e965587-a1cf-4b5f-8f25-721e61afe2d9
            - resource_group_name: test-rg
            - username: '${user}'
            - password:
                value: '${pw}'
                sensitive: true
            - vm_name: centos
            - storage_account: testsa2911
            - proxy_host: web-proxy.eu.softwaregrp.net
            - proxy_port: '8080'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      undeploy_vm:
        x: 320
        'y': 178
        navigate:
          a163639a-ce7a-7b72-38a4-c66315bd0b7e:
            targetId: ee712cd8-6f37-84a2-6454-5aa4419a0831
            port: SUCCESS
    results:
      SUCCESS:
        ee712cd8-6f37-84a2-6454-5aa4419a0831:
          x: 546
          'y': 179
