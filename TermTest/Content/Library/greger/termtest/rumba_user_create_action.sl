namespace: greger.termtest
operation:
  name: rumba_user_create_action
  inputs:
    - user
    - password
    - application
    - useraccount
    - lastname
    - firstname
    - city
    - country
  sequential_action:
    gav: 'com.microfocus.seq:greger.termtest.rumba_user_create_action:1.0.0'
    skills:
      - Java
      - SAP
      - SAP NWBC Desktop
      - SAPUI5
      - SAPWDJ
      - SAPWebExt
      - Terminal Emulators
      - UI Automation
      - Web
    settings:
      sap:
        active: false
        auto_log_on: false
        close_on_exit: false
        ignore_existing_sessions: false
        remember_password: false
      windows:
        active: false
      terminal_settings:
        active: true
        current_emulator: Rumba 9.5
      web:
        active: false
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'TeWindow("TeWindow").TeScreen("Si").TeField("USERID")'
          action: Set
          default_args: '"S"'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '746'
          args: 'Parameter("user")'
      - step:
          id: '31'
          action: Wait
          default_args: '"1"'
      - step:
          id: '2'
          object_path: 'TeWindow("TeWindow").TeScreen("Si").TeField("Password")'
          action: SetSecure
          default_args: '"SYSAD"'
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '826'
          args: 'Parameter("password")'
      - step:
          id: '32'
          action: Wait
          default_args: '"1"'
      - step:
          id: '3'
          object_path: 'TeWindow("TeWindow").TeScreen("Si").TeField("Password")'
          action: SetCursorPos
          default_args: '5'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '826'
      - step:
          id: '33'
          action: Wait
          default_args: '"1"'
      - step:
          id: '4'
          object_path: 'TeWindow("TeWindow").TeScreen("Si")'
          action: SendKey
          default_args: TE_ENTER
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '7958'
      - step:
          id: '34'
          action: Wait
          default_args: '"1"'
      - step:
          id: '5'
          object_path: 'TeWindow("TeWindow").TeScreen("Si")'
          action: Sync
      - step:
          id: '35'
          action: Wait
          default_args: '"1"'
      - step:
          id: '6'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: SendKey
          default_args: '"ACCT"'
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: '7213'
          args: 'Parameter("application")'
      - step:
          id: '36'
          action: Wait
          default_args: '"1"'
      - step:
          id: '7'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: SetCursorPos
          default_args: '1,5'
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '7213'
      - step:
          id: '37'
          action: Wait
          default_args: '"1"'
      - step:
          id: '8'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: SendKey
          default_args: TE_ENTER
          snapshot: ".\\Snapshots\\ssf7.png"
          highlight_id: '7213'
      - step:
          id: '38'
          action: Wait
          default_args: '"1"'
      - step:
          id: '9'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: Sync
      - step:
          id: '39'
          action: Wait
          default_args: '"1"'
      - step:
          id: '10'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU").TeField("REQUEST TYPE")'
          action: Set
          default_args: '"A"'
          snapshot: ".\\Snapshots\\ssf8.png"
          highlight_id: '662'
      - step:
          id: '40'
          action: Wait
          default_args: '"1"'
      - step:
          id: '11'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU").TeField("ACCOUNT")'
          action: Set
          default_args: '"1"'
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '675'
          args: 'Parameter("useraccount")'
      - step:
          id: '41'
          action: Wait
          default_args: '"1"'
      - step:
          id: '12'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU").TeField("PRINTER")'
          action: SetCursorPos
          snapshot: ".\\Snapshots\\ssf10.png"
          highlight_id: '692'
      - step:
          id: '42'
          action: Wait
          default_args: '"1"'
      - step:
          id: '13'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU")'
          action: SendKey
          default_args: TE_ENTER
          snapshot: ".\\Snapshots\\ssf11.png"
          highlight_id: '9864'
      - step:
          id: '43'
          action: Wait
          default_args: '"1"'
      - step:
          id: '14'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU")'
          action: Sync
      - step:
          id: '44'
          action: Wait
          default_args: '"1"'
      - step:
          id: '15'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("SURNAME")'
          action: Set
          default_args: '"S"'
          snapshot: ".\\Snapshots\\ssf12.png"
          highlight_id: '197'
          args: 'Parameter("lastname")'
      - step:
          id: '45'
          action: Wait
          default_args: '"1"'
      - step:
          id: '16'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("FIRST")'
          action: Set
          default_args: '"J"'
          snapshot: ".\\Snapshots\\ssf13.png"
          highlight_id: '277'
          args: 'Parameter("firstname")'
      - step:
          id: '46'
          action: Wait
          default_args: '"1"'
      - step:
          id: '17'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("ADDRESS")'
          action: Set
          default_args: '"Hamburg"'
          snapshot: ".\\Snapshots\\ssf14.png"
          highlight_id: '357'
          args: 'Parameter("city")'
      - step:
          id: '47'
          action: Wait
          default_args: '"1"'
      - step:
          id: '18'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("field437")'
          action: Set
          default_args: '"D"'
          snapshot: ".\\Snapshots\\ssf15.png"
          highlight_id: '437'
          args: 'Parameter("country")'
      - step:
          id: '48'
          action: Wait
          default_args: '"1"'
      - step:
          id: '19'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("NO CARDS ISSUED")'
          action: Set
          default_args: '"1"'
          snapshot: ".\\Snapshots\\ssf16.png"
          highlight_id: '900'
      - step:
          id: '49'
          action: Wait
          default_args: '"1"'
      - step:
          id: '20'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("DATE ISSUED")'
          action: Set
          default_args: '"0"'
          snapshot: ".\\Snapshots\\ssf17.png"
          highlight_id: '919'
          args: '"03"'
      - step:
          id: '50'
          action: Wait
          default_args: '"1"'
      - step:
          id: '21'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("DATE ISSUED_2")'
          action: Set
          default_args: '"2"'
          snapshot: ".\\Snapshots\\ssf18.png"
          highlight_id: '922'
          args: '"24"'
      - step:
          id: '51'
          action: Wait
          default_args: '"1"'
      - step:
          id: '22'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("DATE ISSUED_3")'
          action: Set
          default_args: '"2"'
          snapshot: ".\\Snapshots\\ssf19.png"
          highlight_id: '925'
          args: '"20"'
      - step:
          id: '52'
          action: Wait
          default_args: '"1"'
      - step:
          id: '23'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("REASON")'
          action: Set
          default_args: '"N"'
          snapshot: ".\\Snapshots\\ssf20.png"
          highlight_id: '941'
      - step:
          id: '53'
          action: Wait
          default_args: '"1"'
      - step:
          id: '24'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("CARD CODE")'
          action: Set
          default_args: '"1"'
          snapshot: ".\\Snapshots\\ssf21.png"
          highlight_id: '973'
      - step:
          id: '54'
          action: Wait
          default_args: '"1"'
      - step:
          id: '25'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("APPROVED BY")'
          action: Set
          default_args: '"G"'
          snapshot: ".\\Snapshots\\ssf22.png"
          highlight_id: '999'
          args: '"GW"'
      - step:
          id: '55'
          action: Wait
          default_args: '"1"'
      - step:
          id: '26'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD").TeField("APPROVED BY")'
          action: SetCursorPos
          default_args: '2'
          snapshot: ".\\Snapshots\\ssf23.png"
          highlight_id: '999'
      - step:
          id: '27'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD")'
          action: SendKey
          default_args: TE_ENTER
          snapshot: ".\\Snapshots\\ssf24.png"
          highlight_id: '13420'
      - step:
          id: '56'
          action: Wait
          default_args: '"1"'
      - step:
          id: '28'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: NEW RECORD")'
          action: Sync
      - step:
          id: '57'
          action: Wait
          default_args: '"1"'
      - step:
          id: '29'
          object_path: 'TeWindow("TeWindow")'
          action: CaptureBitmap
          default_args: '"created.png"'
      - step:
          id: '30'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU").TeField("REQUESTED(protected)")'
          action: Output
          default_args: 'CheckPoint("status")'
  outputs:
    - status:
        robot: true
        value: '${status}'
    - return_result: '${return_result}'
    - error_message: '${error_message}'
  results:
    - SUCCESS
    - WARNING
    - FAILURE
object_repository:
  objects:
    - object:
        smart_identification:
          base_filter: ''
          optional_filter: ''
          algorithm: Mercury.TolerantPriority
          active: true
        name: TeWindow
        child_objects:
          - object:
              smart_identification: ''
              name: Si
              child_objects:
                - object:
                    smart_identification: ''
                    name: USERID
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: USERID
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: Password
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: Password
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: '1'
                      regular_expression: false
                    name: screen label row
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: '30'
                      regular_expression: false
                    name: screen label length
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: '1'
                      regular_expression: false
                    name: screen label column
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: Si
                      regular_expression: false
                    name: label
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay: ''
              class: TeScreen
              visual_relations: ''
              last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
              basic_identification:
                property_ref:
                  - screen label row
                  - screen label length
                  - screen label column
                  - label
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: ACCTE0012I Signon complete
              child_objects: []
              properties:
                - property:
                    value:
                      value: '1'
                      regular_expression: false
                    name: screen label row
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: '30'
                      regular_expression: false
                    name: screen label length
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: '1'
                      regular_expression: false
                    name: screen label column
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: ACCTE0012I Signon complete at
                      regular_expression: false
                    name: label
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: TeScreen
              visual_relations: ''
              last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
              basic_identification:
                property_ref:
                  - screen label row
                  - screen label length
                  - screen label column
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: 'ACCOUNT FILE: NEW RECORD'
              child_objects:
                - object:
                    smart_identification: ''
                    name: SURNAME
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: SURNAME
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: REASON
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: REASON
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: NO CARDS ISSUED
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: NO CARDS ISSUED
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: FIRST
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: FIRST
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: field437
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: field437
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: DATE ISSUED_3
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: DATE ISSUED
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier:
                        value: 2
                        type: index
                - object:
                    smart_identification: ''
                    name: DATE ISSUED_2
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: DATE ISSUED
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier:
                        value: 1
                        type: index
                - object:
                    smart_identification: ''
                    name: DATE ISSUED
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: DATE ISSUED
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier:
                        value: 0
                        type: index
                - object:
                    smart_identification: ''
                    name: CARD CODE
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: CARD CODE
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: APPROVED BY
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: APPROVED BY
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: ADDRESS
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: ADDRESS
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: '1'
                      regular_expression: false
                    name: screen label row
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: '30'
                      regular_expression: false
                    name: screen label length
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: '1'
                      regular_expression: false
                    name: screen label column
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: 'ACCOUNT FILE: NEW RECORD'
                      regular_expression: false
                    name: label
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay: ''
              class: TeScreen
              visual_relations: ''
              last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
              basic_identification:
                property_ref:
                  - screen label row
                  - screen label length
                  - screen label column
                  - label
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: 'ACCOUNT FILE: MENU'
              child_objects:
                - object:
                    smart_identification: ''
                    name: REQUESTED(protected)
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '-1'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: REQUESTED(protected)
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: REQUEST TYPE
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: REQUEST TYPE
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: PRINTER
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: PRINTER
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
                - object:
                    smart_identification: ''
                    name: ACCOUNT
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: protected
                          hidden: false
                          read_only: false
                          type: BOOL
                      - property:
                          value:
                            value: ACCOUNT
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
                    basic_identification:
                      property_ref:
                        - protected
                        - attached text
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: '1'
                      regular_expression: false
                    name: screen label row
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: '30'
                      regular_expression: false
                    name: screen label length
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: '1'
                      regular_expression: false
                    name: screen label column
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: 'ACCOUNT FILE: MENU'
                      regular_expression: false
                    name: label
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay: ''
              class: TeScreen
              visual_relations: ''
              last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
              basic_identification:
                property_ref:
                  - screen label row
                  - screen label length
                  - screen label column
                  - label
                ordinal_identifier: ''
        properties:
          - property:
              value:
                value: 'Yes'
                regular_expression: false
              name: terminal emulator
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: A
                regular_expression: false
              name: short name
              hidden: false
              read_only: false
              type: STRING
        comments: ''
        custom_replay: ''
        class: TeWindow
        visual_relations: ''
        last_update_time: 'Dienstag, 9. Juni 2020 14:14:33'
        basic_identification:
          property_ref:
            - terminal emulator
            - short name
          ordinal_identifier: ''
  check_points_and_outputs:
    - check_point_and_output:
        standard_properties:
          standard_property:
            - value: ''
              visual_relations: ''
              parameter:
                value: status
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
                type: Parameter
              name: text
              flags: '312'
              inner_type: '8'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: testobjname
              flags: '3'
              inner_type: '0'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: testobjgentype
              flags: '3'
              inner_type: '0'
              type: STRING
            - value:
                value: Output Value
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: step_type
              flags: '88'
              inner_type: '8'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: parent
              flags: '9'
              inner_type: '0'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: objectid
              flags: '9'
              inner_type: '0'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: micclass
              flags: '3'
              inner_type: '0'
              type: STRING
            - value:
                value: ''
                regular_expression: false
                ignore_space: false
                match_case: false
                not_exact_match: false
                formula: false
              visual_relations: ''
              parameter: ''
              name: class name
              flags: '3'
              inner_type: '0'
              type: STRING
        settings: ''
        name: status
        type: Output
        class: VerifyObj
  parameters: []
