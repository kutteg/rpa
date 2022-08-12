########################################################################################################################
#!!
#! @description: SAP GUI muss geöffnet sein
#!!#
########################################################################################################################
namespace: greger.saptest
flow:
  name: sap_user_delete_flow
  inputs:
    - user: KGTEST
  workflow:
    - sap_user_delete_action:
        do:
          greger.saptest.sap_user_delete_action:
            - user: '${user}'
        publish:
          - resultmessage
        navigate:
          - SUCCESS: contains
          - WARNING: contains
          - FAILURE: on_failure
    - contains:
        do:
          io.cloudslang.base.lists.contains:
            - container: '${resultmessage}'
            - sublist: deleted
            - delimiter: ' '
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      sap_user_delete_action:
        x: 124
        'y': 190
      contains:
        x: 346
        'y': 192
        navigate:
          963968c4-0d0c-4550-11f9-758852072871:
            targetId: 002ef2ec-6993-223a-0fd9-4d08eb0ee641
            port: SUCCESS
    results:
      SUCCESS:
        002ef2ec-6993-223a-0fd9-4d08eb0ee641:
          x: 543
          'y': 184
