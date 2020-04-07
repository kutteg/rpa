namespace: kg_converter
operation:
  name: kg_converter_gui
  inputs:
    - from_unit: Yard
    - to_unit: Centimeters
    - from_amount: '1'
  sequential_action:
    gav: 'com.microfocus.seq:kg_converter.kg_converter_gui:1.0.0'
    skills:
      - .NET
      - ActiveX
      - Delphi
      - Flex
      - Java
      - Oracle
      - PeopleSoft
      - PowerBuilder
      - Qt
      - SAP
      - SAP NWBC Desktop
      - SAPUI5
      - SAPWDJ
      - SAPWebExt
      - Stingray
      - Terminal Emulators
      - UI Automation
      - Visual Basic
      - VisualAge SmallTalk
      - Web
      - WPF
      - Silverlight
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
            directory: ''
            path: calc
      terminal_settings:
        active: false
      web:
        active: false
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'Window("Calculator").WinMenu("Menu")'
          action: Select
          default_args: "\"View;Unit conversion\tCtrl+U\""
      - step:
          id: '2'
          object_path: 'Window("Calculator").WinComboBox("Select the type of unit")'
          action: Select
          default_args: '"Length"'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '1900874'
      - step:
          id: '3'
          object_path: 'Window("Calculator").WinComboBox("From")'
          action: Select
          default_args: '"Yard"'
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '1049302'
          args: 'Parameter("from_unit")'
      - step:
          id: '4'
          object_path: 'Window("Calculator").WinComboBox("To")'
          action: Select
          default_args: '"Centimeters"'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '525638'
          args: 'Parameter("to_unit")'
      - step:
          id: '5'
          object_path: 'Window("Calculator").WinEdit("From")'
          action: Set
          default_args: '"1"'
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '788050'
          args: 'Parameter("from_amount")'
      - step:
          id: '6'
          object_path: 'Window("Calculator").WinEdit("To")'
          action: Output
          default_args: 'CheckPoint("result")'
  outputs:
    - result:
        robot: true
        value: '${result}'
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
              last_update_time: 'Tuesday, April 7, 2020 2:37:13 PM'
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
              last_update_time: 'Tuesday, April 7, 2020 2:37:13 PM'
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
              last_update_time: 'Tuesday, April 7, 2020 2:37:13 PM'
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
              last_update_time: 'Tuesday, April 7, 2020 2:37:13 PM'
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
              last_update_time: 'Tuesday, April 7, 2020 2:37:13 PM'
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
                      value: ComboBox
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
                  value: ComboBox
                  name: simclass
                  type: STRING
              class: WinComboBox
              visual_relations: ''
              last_update_time: 'Tuesday, April 7, 2020 2:37:13 PM'
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
              name: text
              hidden: false
              read_only: false
              type: STRING
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
        last_update_time: 'Tuesday, April 7, 2020 2:37:13 PM'
        basic_identification:
          property_ref:
            - text
            - regexpwndtitle
            - regexpwndclass
            - is owned window
            - is child window
          ordinal_identifier:
            value: 1
            type: location
  check_points_and_outputs:
    - check_point_and_output:
        standard_properties:
          standard_property:
            - value: ''
              visual_relations: ''
              parameter:
                value: result
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
        name: result
        type: Output
        class: VerifyObj
  parameters: []
