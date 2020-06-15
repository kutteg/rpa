namespace: greger.vmwaretest
flow:
  name: vm_clone_flow
  workflow:
    - provision_linux_vm:
        do:
          io.cloudslang.vmware.vcenter.provision_linux_vm:
            - host: suotvcenter003g.swinfra.net
            - user: "swinfra.net\\greger"
            - password:
                value: jojo-26MOM
                sensitive: true
            - port: null
            - protocol: https
            - customization_template_name: BBN_DemoCenter_Network
            - customization_spec_xml: null
            - vm_source_identifier: name
            - vm_source: CentOS7.5_x64_nolvm
            - datacenter: SUO05-SW-DemoCenter
            - vm_name: mycentos
            - vm_folder: SWEMEA-Other
            - resource_pool: HCM
            - cluster_name: SWEMEA-Other
            - hw_clock_utc: 'true'
            - auth_type: 'basic,digest'
            - trust_all_roots: 'false'
            - x_509_hostname_verifier: allow_all
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      provision_linux_vm:
        x: 151.02476501464844
        'y': 195.9158477783203
        navigate:
          2b91571a-356d-9db8-48d4-c61760263daf:
            targetId: cadc7690-29b0-7caa-6c4b-0676237e0c46
            port: SUCCESS
    results:
      SUCCESS:
        cadc7690-29b0-7caa-6c4b-0676237e0c46:
          x: 454
          'y': 200
