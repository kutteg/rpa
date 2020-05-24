namespace: greger
operation:
  name: calc_action
  inputs:
    - celsius
  sequential_action:
    gav: 'com.microfocus.seq:greger.calc_action:1.0.0'
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
        active: true
        apps:
          app_1:
            args: ''
            path: "C:\\Windows\\system32\\calc.exe"
            directory: ''
      terminal_settings:
        active: false
      web:
        active: false
        close_on_exit: false
    steps:
      - step:
          id: '2'
          object_path: 'Window("Calculator").WinMenu("Menu")'
          action: Select
          default_args: "\"View;Unit conversion\tCtrl+U\""
      - step:
          id: '3'
          object_path: 'Window("Calculator").WinComboBox("Select the type of unit")'
          action: Select
          default_args: '"Temperature"'
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '2688112'
      - step:
          id: '4'
          object_path: 'Window("Calculator").WinComboBox("To")'
          action: Select
          default_args: '"Degrees Fahrenheit"'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '2491960'
      - step:
          id: '5'
          object_path: 'Window("Calculator").WinEdit("From")'
          action: Set
          default_args: '"15"'
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '3016190'
          args: 'Parameter("celsius")'
      - step:
          id: '6'
          object_path: 'Window("Calculator").WinEdit("To")'
          action: Output
          default_args: 'CheckPoint("fahrenheit")'
      - step:
          id: '7'
          object_path: 'Window("Calculator").WinMenu("Menu")'
          action: Select
          default_args: "\"View;Basic\tCtrl+F4\""
      - step:
          id: '8'
          object_path: 'Window("Calculator")'
          action: Close
  outputs:
    - fahrenheit:
        robot: true
        value: '${fahrenheit}'
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
              name: Menu
              child_objects: []
              properties:
                - property:
                    value:
                      value: '2'
                      regular_expression: false
                    name: menuobjtype
                    hidden: false
                    read_only: false
                    type: NUMBER
              comments: ''
              custom_replay: ''
              class: WinMenu
              visual_relations: ''
              last_update_time: 'Mittwoch, 20. Mai 2020 16:43:25'
              basic_identification:
                property_ref:
                  - menuobjtype
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: To
              child_objects: []
              properties:
                - property:
                    value:
                      value: Edit
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: To
                      regular_expression: false
                    name: attached text
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Edit
                  name: simclass
                  type: STRING
              class: WinEdit
              visual_relations: ''
              last_update_time: 'Mittwoch, 20. Mai 2020 16:43:25'
              basic_identification:
                property_ref:
                  - nativeclass
                  - attached text
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: From
              child_objects: []
              properties:
                - property:
                    value:
                      value: Edit
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: From
                      regular_expression: false
                    name: attached text
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: Edit
                  name: simclass
                  type: STRING
              class: WinEdit
              visual_relations: ''
              last_update_time: 'Mittwoch, 20. Mai 2020 16:43:25'
              basic_identification:
                property_ref:
                  - nativeclass
                  - attached text
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: To
              child_objects: []
              properties:
                - property:
                    value:
                      value: ComboBox
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: To
                      regular_expression: false
                    name: attached text
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ComboBox
                  name: simclass
                  type: STRING
              class: WinComboBox
              visual_relations: ''
              last_update_time: 'Mittwoch, 20. Mai 2020 16:43:25'
              basic_identification:
                property_ref:
                  - nativeclass
                  - attached text
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Select the type of unit
              child_objects: []
              properties:
                - property:
                    value:
                      value: ComboBox
                      regular_expression: false
                    name: nativeclass
                    hidden: false
                    read_only: false
                    type: STRING
                - property:
                    value:
                      value: Select the type of unit you want to convert
                      regular_expression: false
                    name: attached text
                    hidden: false
                    read_only: false
                    type: STRING
              comments: ''
              custom_replay:
                behavior:
                  value: ComboBox
                  name: simclass
                  type: STRING
              class: WinComboBox
              visual_relations: ''
              last_update_time: 'Mittwoch, 20. Mai 2020 16:43:25'
              basic_identification:
                property_ref:
                  - nativeclass
                  - attached text
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
        last_update_time: 'Mittwoch, 20. Mai 2020 16:43:25'
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
                value: fahrenheit
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
        name: fahrenheit
        type: Output
        class: VerifyObj
  parameters: []
