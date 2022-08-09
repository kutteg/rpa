namespace: greger.hydactest
flow:
  name: translate_flow
  inputs:
    - suchtext: Sohn
  workflow:
    - translate_action:
        do:
          greger.hydactest.translate_action:
            - suchtext: '${suchtext}'
        publish:
          - output_0: '${translate}'
        navigate:
          - SUCCESS: translate_action_1
          - WARNING: translate_action_1
          - FAILURE: on_failure
    - translate_action_1:
        do:
          greger.hydactest.translate_action:
            - suchtext: '${output_0}'
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      translate_action:
        x: 121
        'y': 176
      translate_action_1:
        x: 369
        'y': 174
        navigate:
          8e76bd01-7408-bfc0-3b54-6cc2e6d60016:
            targetId: 02b459e7-61e7-437d-3768-2e084c42a804
            port: SUCCESS
          8f839eb9-5ef3-bec3-96bc-8624b2038eed:
            targetId: 02b459e7-61e7-437d-3768-2e084c42a804
            port: WARNING
    results:
      SUCCESS:
        02b459e7-61e7-437d-3768-2e084c42a804:
          x: 608
          'y': 171
