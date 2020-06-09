namespace: greger.termtest
operation:
  name: rumba_login_action
  inputs:
    - username
    - password
    - application
  sequential_action:
    gav: 'com.microfocus.seq:greger.termtest.rumba_login_action:1.0.0'
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
          args: 'Parameter("username")'
      - step:
          id: '10'
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
          id: '11'
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
          id: '12'
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
          id: '13'
          action: Wait
          default_args: '"1"'
      - step:
          id: '5'
          object_path: 'TeWindow("TeWindow").TeScreen("Si")'
          action: Sync
      - step:
          id: '14'
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
          id: '7'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: SetCursorPos
          default_args: '1,5'
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '7213'
      - step:
          id: '15'
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
          id: '16'
          action: Wait
          default_args: '"1"'
      - step:
          id: '9'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: Sync
  outputs:
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
                    last_update_time: 'Dienstag, 9. Juni 2020 14:40:27'
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
                    last_update_time: 'Dienstag, 9. Juni 2020 14:40:27'
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
              last_update_time: 'Dienstag, 9. Juni 2020 14:40:27'
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
              last_update_time: 'Dienstag, 9. Juni 2020 14:40:27'
              basic_identification:
                property_ref:
                  - screen label row
                  - screen label length
                  - screen label column
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
        last_update_time: 'Dienstag, 9. Juni 2020 14:40:27'
        basic_identification:
          property_ref:
            - terminal emulator
            - short name
          ordinal_identifier: ''
  check_points_and_outputs: []
  parameters: []
