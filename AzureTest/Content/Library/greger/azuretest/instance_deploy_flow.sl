namespace: greger.azuretest
flow:
  name: instance_deploy_flow
  inputs:
    - user: hcm@greger.onmicrosoft.com
    - pw:
        default: kE4./veEXB;_Jbd
        sensitive: true
  workflow:
    - deploy_vm:
        do:
          io.cloudslang.microsoft.azure.deploy_vm:
            - subscription_id: 2e965587-a1cf-4b5f-8f25-721e61afe2d9
            - resource_group_name: test-rg
            - username: '${user}'
            - password:
                value: '${pw}'
                sensitive: true
            - location: westeurope
            - vm_name: centos
            - vm_name_prefix: null
            - vm_size: Standard_D1_v2
            - offer: CentOS
            - sku: '7.4'
            - publisher: OpenLogic
            - virtual_network_name: test-vnet
            - availability_set_name: test-aset-u
            - storage_account: testsa2911
            - subnet_name: test-subnet
            - os_platform: Linux
            - vm_username: kgreger
            - vm_password:
                value: Cloud@123
                sensitive: true
            - disk_size: '40'
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
      deploy_vm:
        x: 313
        'y': 177
        navigate:
          b7d3660f-e800-b8c9-753c-97b933a66b62:
            targetId: ee712cd8-6f37-84a2-6454-5aa4419a0831
            port: SUCCESS
    results:
      SUCCESS:
        ee712cd8-6f37-84a2-6454-5aa4419a0831:
          x: 546
          'y': 179
