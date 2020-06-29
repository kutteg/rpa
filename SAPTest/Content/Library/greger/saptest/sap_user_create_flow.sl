########################################################################################################################
#!!
#! @description: SAG GUI muss geöffnet sein
#!!#
########################################################################################################################
namespace: greger.saptest
flow:
  name: sap_user_create_flow
  inputs:
    - user: OETEST
    - password:
        default: Cloud@123
        sensitive: true
    - firstname: OE
    - lastname: TEST
    - email: kgtest@gmail.com
  workflow:
    - sap_user_create_action:
        do:
          greger.saptest.sap_user_create_action:
            - user: '${user}'
            - password: '${password}'
            - firstname: '${firstname}'
            - lastname: '${lastname}'
            - email: '${email}'
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
            - sublist: saved
            - delimiter: ' '
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      sap_user_create_action:
        x: 123
        'y': 231
      contains:
        x: 369
        'y': 229
        navigate:
          4cb2ff19-ffbc-9924-3550-4cb1b640a158:
            targetId: 3099b725-c946-f1ce-33ce-ca3ce639885d
            port: SUCCESS
    results:
      SUCCESS:
        3099b725-c946-f1ce-33ce-ca3ce639885d:
          x: 580
          'y': 228
