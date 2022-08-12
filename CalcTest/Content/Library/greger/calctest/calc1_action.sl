namespace: greger.calctest
operation:
  name: calc1_action
  sequential_action:
    gav: com.microfocus.seq:greger.calctest.calc1_action:1.0.0
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
      web:
        active: false
        close_on_exit: false
    steps:
    - step:
        id: '1'
        object_path: Window("Calculator").WinButton("Button")
        action: Click
        snapshot: .\Snapshots\ssf1.png
        highlight_id: '11927940'
    - step:
        id: '2'
        object_path: Window("Calculator").WinButton("Button_2")
        action: Click
        snapshot: .\Snapshots\ssf2.png
        highlight_id: '2622814'
    - step:
        id: '3'
        object_path: Window("Calculator").WinButton("Button")
        action: Click
        snapshot: .\Snapshots\ssf3.png
        highlight_id: '11927940'
    - step:
        id: '4'
        object_path: Window("Calculator").WinButton("Button_3")
        action: Click
        snapshot: .\Snapshots\ssf4.png
        highlight_id: '95158938'
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
object_repository:
  objects:
  - object:
      class: Window
      name: Calculator
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
      basic_identification:
        property_ref:
        - regexpwndtitle
        - regexpwndclass
        - is owned window
        - is child window
        ordinal_identifier: ''
      smart_identification: ''
      custom_replay:
        behavior:
          value: CalcFrame
          name: simclass
          type: STRING
      comments: ''
      visual_relations: ''
      last_update_time: Freitag, 12. August 2022 14:29:53
      child_objects:
      - object:
          class: WinButton
          name: Button_3
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
          basic_identification:
            property_ref:
            - window id
            - text
            - nativeclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: Button
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Freitag, 12. August 2022 14:29:53
          child_objects: []
      - object:
          class: WinButton
          name: Button_2
          properties:
          - property:
              value:
                value: '93'
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
          basic_identification:
            property_ref:
            - window id
            - text
            - nativeclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: Button
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Freitag, 12. August 2022 14:29:53
          child_objects: []
      - object:
          class: WinButton
          name: Button
          properties:
          - property:
              value:
                value: '131'
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
          basic_identification:
            property_ref:
            - window id
            - text
            - nativeclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: Button
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Freitag, 12. August 2022 14:29:53
          child_objects: []
  check_points_and_outputs: []
  parameters: []
