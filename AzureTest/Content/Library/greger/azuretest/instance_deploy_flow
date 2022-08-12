namespace: greger.azuretest
flow:
  name: instance_deploy_flow
  inputs:
    - user: hcm@greger.onmicrosoft.com
    - pw:
        default: ********
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
                value: ********
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
        x: 100
        'y': 150
        navigate:
          79369c97-ee33-eb4f-b4ea-143b4dc109f0:
            targetId: a1f6cd56-6edc-9f7e-3a0e-93aa7184e095
            port: SUCCESS
    results:
      SUCCESS:
        a1f6cd56-6edc-9f7e-3a0e-93aa7184e095:
          x: 400
          'y': 150

