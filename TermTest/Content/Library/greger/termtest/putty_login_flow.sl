namespace: greger.termtest
flow:
  name: putty_login_flow
  workflow:
    - putty_login_action:
        do:
          greger.termtest.putty_login_action:
            - user: root
            - password:
                value: 'HPS0ftware!'
                sensitive: true
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      putty_login_action:
        x: 240
        'y': 280
        navigate:
          2ee40888-1375-6e6c-4d51-8b9eac33e043:
            targetId: 9bfc6aa6-b572-874c-8244-780c6c4c5223
            port: WARNING
          cdfc3c02-acc8-2968-3344-5a7c633c74db:
            targetId: 9bfc6aa6-b572-874c-8244-780c6c4c5223
            port: SUCCESS
    results:
      SUCCESS:
        9bfc6aa6-b572-874c-8244-780c6c4c5223:
          x: 560
          'y': 280
