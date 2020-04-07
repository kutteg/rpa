namespace: EntitlementPortal
flow:
  name: fl_check_ent
  workflow:
    - ui_logon:
        do:
          EntitlementPortal.ui_logon: []
        navigate:
          - SUCCESS: ui_searchaccount
          - WARNING: ui_searchaccount
          - FAILURE: on_failure
    - ui_searchaccount:
        do:
          EntitlementPortal.ui_searchaccount: []
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
      ui_logon:
        x: 104
        'y': 228
      ui_searchaccount:
        x: 298
        'y': 232
        navigate:
          a33f46d1-2785-220a-165e-9fd330652aea:
            targetId: 265a496e-7d63-f385-ff90-151bd4f77787
            port: SUCCESS
          27f93097-9cd7-09c1-c60f-ddd8908453bb:
            targetId: 265a496e-7d63-f385-ff90-151bd4f77787
            port: WARNING
    results:
      SUCCESS:
        265a496e-7d63-f385-ff90-151bd4f77787:
          x: 560
          'y': 239
