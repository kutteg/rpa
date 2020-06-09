namespace: greger.termtest
flow:
  name: rumba_user_login_flow
  workflow:
    - rumba_login_action:
        do:
          greger.termtest.rumba_login_action:
            - username: SYSAD
            - password: SYSAD
            - application: ACCT
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
      rumba_login_action:
        x: 174.02476501464844
        'y': 211.02476501464844
        navigate:
          260e4730-286e-49f9-f6ba-48924de8bd23:
            targetId: e52f4558-79bc-3ab1-dc7e-2b96672fce4e
            port: SUCCESS
          f191450e-524a-bcf2-c245-679ec35a09d1:
            targetId: e52f4558-79bc-3ab1-dc7e-2b96672fce4e
            port: WARNING
    results:
      SUCCESS:
        e52f4558-79bc-3ab1-dc7e-2b96672fce4e:
          x: 472
          'y': 211
