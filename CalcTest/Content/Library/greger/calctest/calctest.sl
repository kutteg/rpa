namespace: greger.calctest
operation:
  name: calctest
  sequential_action:
    gav: 'com.microfocus.seq:greger.calctest.calctest:1.0.0'
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
        active: false
        current_emulator: Rumba 9.5
      web:
        active: false
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'Window("Calculator").WinButton("Button")'
          action: Click
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '984514'
      - step:
          id: '2'
          object_path: 'Window("Calculator").WinButton("Button_2")'
          action: Click
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '1246456'
      - step:
          id: '3'
          object_path: 'Window("Calculator").WinButton("Button_3")'
          action: Click
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '787068'
      - step:
          id: '4'
          object_path: 'Window("Calculator").WinButton("Button_4")'
          action: Click
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '591044'
      - step:
          id: '5'
          object_path: 'Window("Calculator").Static("32")'
          action: Output
          default_args: 'CheckPoint("param1")'
      - step:
          id: '6'
          object_path: 'Window("Calculator").WinButton("Button_5")'
          action: Click
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: '5375318'
  outputs:
    - param1:
        robot: true
        value: '${param1}'
    - return_result: '${return_result}'
    - error_message: '${error_message}'
  results:
    - SUCCESS
    - WARNING
    - FAILURE
object_repository:
  objects:
    - object:
        smart_identification: ''
        name: Calculator
        child_objects:
          - object:
              smart_identification: ''
              name: Button_5
              child_objects: []
              properties:
                - property:
                    value:
                      value: '81'
                      regular_expression: false
                    name: window id
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Button
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              class: WinButton
              visual_relations: ''
              last_update_time: 'Dienstag, 14. September 2021 14:19:18'
              basic_identification:
                property_ref:
                  - window id
                  - text
                  - nativeclass
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Button_4
              child_objects: []
              properties:
                - property:
                    value:
                      value: '121'
                      regular_expression: false
                    name: window id
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Button
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              class: WinButton
              visual_relations: ''
              last_update_time: 'Dienstag, 14. September 2021 14:19:18'
              basic_identification:
                property_ref:
                  - window id
                  - text
                  - nativeclass
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Button_3
              child_objects: []
              properties:
                - property:
                    value:
                      value: '138'
                      regular_expression: false
                    name: window id
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Button
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              class: WinButton
              visual_relations: ''
              last_update_time: 'Dienstag, 14. September 2021 14:19:18'
              basic_identification:
                property_ref:
                  - window id
                  - text
                  - nativeclass
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Button_2
              child_objects: []
              properties:
                - property:
                    value:
                      value: '92'
                      regular_expression: false
                    name: window id
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Button
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              class: WinButton
              visual_relations: ''
              last_update_time: 'Dienstag, 14. September 2021 14:19:18'
              basic_identification:
                property_ref:
                  - window id
                  - text
                  - nativeclass
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Button
              child_objects: []
              properties:
                - property:
                    value:
                      value: '134'
                      regular_expression: false
                    name: window id
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: text
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Button
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              class: WinButton
              visual_relations: ''
              last_update_time: 'Dienstag, 14. September 2021 14:19:18'
              basic_identification:
                property_ref:
                  - window id
                  - text
                  - nativeclass
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: '32'
              child_objects: []
              properties:
                - property:
                    value:
                      value: '150'
                      regular_expression: false
                    name: window id
                    hidden: false
                    read_only: false
                    type: NUMBER
                - property:
                    value:
                      value: Static
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Static
                  name: simclass
                  type: STRING
              class: Static
              visual_relations: ''
              last_update_time: 'Dienstag, 14. September 2021 14:19:18'
              basic_identification:
                property_ref:
                  - window id
                  - nativeclass
                ordinal_identifier: ''
        properties:
          - property:
              value:
                value: Calculator
                regular_expression: false
              name: regexpwndtitle
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: CalcFrame
                regular_expression: false
              name: regexpwndclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is owned window
              hidden: false
              read_only: false
              type: BOOL
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is child window
              hidden: false
              read_only: false
              type: BOOL
        comments: ''
        custom_replay:
          behavior:
            value: CalcFrame
            name: simclass
            type: STRING
        class: Window
        visual_relations: ''
        last_update_time: 'Dienstag, 14. September 2021 14:19:18'
        basic_identification:
          property_ref:
            - regexpwndtitle
            - regexpwndclass
            - is owned window
            - is child window
          ordinal_identifier: ''
  check_points_and_outputs:
    - check_point_and_output:
        standard_properties:
          standard_property:
            - value: ''
              visual_relations: ''
              parameter:
                value: '"param1"'
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
        name: param1
        type: Output
        class: VerifyObj
  parameters: []
