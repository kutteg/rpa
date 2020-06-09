namespace: greger.termtest
operation:
  name: rumba_user_delete_action
  inputs:
    - user
    - password
    - application: ACCT
    - useraccount: '10001'
  sequential_action:
    gav: 'com.microfocus.seq:greger.termtest.rumba_user_delete_action:1.0.0'
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
          default_args: '"SY"'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '746'
          args: 'Parameter("user")'
      - step:
          id: '22'
          action: Wait
          default_args: '"1"'
      - step:
          id: '4'
          object_path: 'TeWindow("TeWindow").TeScreen("Si").TeField("Password")'
          action: SetSecure
          default_args: '"SYSAD"'
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '826'
          args: 'Parameter("password")'
      - step:
          id: '23'
          action: Wait
          default_args: '"1"'
      - step:
          id: '5'
          object_path: 'TeWindow("TeWindow").TeScreen("Si").TeField("Password")'
          action: SetCursorPos
          default_args: '5'
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: '826'
      - step:
          id: '24'
          action: Wait
          default_args: '"1"'
      - step:
          id: '6'
          object_path: 'TeWindow("TeWindow").TeScreen("Si")'
          action: SendKey
          default_args: TE_ENTER
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '7958'
      - step:
          id: '25'
          action: Wait
          default_args: '"1"'
      - step:
          id: '7'
          object_path: 'TeWindow("TeWindow").TeScreen("Si")'
          action: Sync
      - step:
          id: '26'
          action: Wait
          default_args: '"1"'
      - step:
          id: '8'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: SendKey
          default_args: '"ACCT"'
          snapshot: ".\\Snapshots\\ssf7.png"
          highlight_id: '7213'
      - step:
          id: '27'
          action: Wait
          default_args: '"1"'
      - step:
          id: '10'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: SendKey
          default_args: TE_ENTER
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '7213'
      - step:
          id: '28'
          action: Wait
          default_args: '"1"'
      - step:
          id: '11'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCTE0012I Signon complete")'
          action: Sync
      - step:
          id: '29'
          action: Wait
          default_args: '"1"'
      - step:
          id: '12'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU").TeField("REQUEST TYPE")'
          action: Set
          default_args: '"X"'
          snapshot: ".\\Snapshots\\ssf10.png"
          highlight_id: '662'
      - step:
          id: '30'
          action: Wait
          default_args: '"1"'
      - step:
          id: '13'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU").TeField("ACCOUNT")'
          action: Set
          default_args: '"1"'
          snapshot: ".\\Snapshots\\ssf11.png"
          highlight_id: '675'
          args: '"10001"'
      - step:
          id: '31'
          action: Wait
          default_args: '"1"'
      - step:
          id: '14'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU").TeField("PRINTER")'
          action: SetCursorPos
          snapshot: ".\\Snapshots\\ssf12.png"
          highlight_id: '692'
      - step:
          id: '32'
          action: Wait
          default_args: '"1"'
      - step:
          id: '15'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU")'
          action: SendKey
          default_args: TE_ENTER
          snapshot: ".\\Snapshots\\ssf13.png"
          highlight_id: '9864'
      - step:
          id: '33'
          action: Wait
          default_args: '"1"'
      - step:
          id: '16'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: MENU")'
          action: Sync
      - step:
          id: '34'
          action: Wait
          default_args: '"1"'
      - step:
          id: '17'
          object_path: "TeWindow(\"TeWindow\").TeScreen(\"ACCOUNT FILE: DELETION\").TeField(\"ENTER 'Y' TO CONFIRM OR\")"
          action: Set
          default_args: '"Y"'
          snapshot: ".\\Snapshots\\ssf14.png"
          highlight_id: '1753'
      - step:
          id: '35'
          action: Wait
          default_args: '"1"'
      - step:
          id: '18'
          object_path: "TeWindow(\"TeWindow\").TeScreen(\"ACCOUNT FILE: DELETION\").TeField(\"ENTER 'Y' TO CONFIRM OR\")"
          action: SetCursorPos
          default_args: '1'
          snapshot: ".\\Snapshots\\ssf15.png"
          highlight_id: '1753'
      - step:
          id: '37'
          action: Wait
          default_args: '"1"'
      - step:
          id: '19'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: DELETION")'
          action: SendKey
          default_args: TE_ENTER
          snapshot: ".\\Snapshots\\ssf16.png"
          highlight_id: '13829'
      - step:
          id: '36'
          action: Wait
          default_args: '"1"'
      - step:
          id: '20'
          object_path: 'TeWindow("TeWindow").TeScreen("ACCOUNT FILE: DELETION")'
          action: Sync
      - step:
          id: '21'
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
                    last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
                    last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
              last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
                      value: CASSE0012I Signon complete at
                      regular_expression: false
                    name: label
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: TeScreen
              visual_relations: ''
              last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
              basic_identification:
                property_ref:
                  - screen label row
                  - screen label length
                  - screen label column
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
                    last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
                    last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
                    last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
                    last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
              last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
              basic_identification:
                property_ref:
                  - screen label row
                  - screen label length
                  - screen label column
                  - label
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: 'ACCOUNT FILE: DELETION'
              child_objects:
                - object:
                    smart_identification: ''
                    name: "ENTER 'Y' TO CONFIRM OR"
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
                            value: 'ENTER "Y" TO CONFIRM OR "CLEAR" TO CANCEL'
                            regular_expression: false
                          name: attached text
                          hidden: false
                          read_only: false
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: TeField
                    visual_relations: ''
                    last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
                      value: 'ACCOUNT FILE: DELETION'
                      regular_expression: false
                    name: label
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay: ''
              class: TeScreen
              visual_relations: ''
              last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
        last_update_time: 'Dienstag, 9. Juni 2020 12:00:13'
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
