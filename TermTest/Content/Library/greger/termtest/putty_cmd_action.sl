namespace: greger.termtest
operation:
  name: putty_cmd_action
  sequential_action:
    gav: 'com.microfocus.seq:greger.termtest.putty_cmd_action:1.0.0'
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
          object_path: 'TeWindow("TeWindow").TeTextScreen("TeTextScreen")'
          action: ClickPosition
          default_args: '5,27'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '459936'
      - step:
          id: '2'
          object_path: 'TeWindow("TeWindow").TeTextScreen("TeTextScreen")'
          action: Type
          default_args: '"p"'
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '459936'
          args: '"pwd"'
      - step:
          id: '13'
          object_path: 'TeWindow("TeWindow").TeTextScreen("TeTextScreen")'
          action: Type
          default_args: micReturn
          snapshot: ".\\Snapshots\\ssf13.png"
          highlight_id: '459936'
      - step:
          id: '14'
          object_path: 'TeWindow("TeWindow").TeTextScreen("TeTextScreen")'
          action: Sync
          snapshot: ".\\Snapshots\\ssf14.png"
          highlight_id: '459936'
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
              name: TeTextScreen
              child_objects: []
              properties:
                - property:
                    value:
                      value: 'Yes'
                      regular_expression: false
                    name: text screen
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: TeTextScreen
              visual_relations: ''
              last_update_time: 'Freitag, 19. August 2022 11:26:35'
              basic_identification:
                property_ref:
                  - text screen
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
        last_update_time: 'Freitag, 19. August 2022 11:26:35'
        basic_identification:
          property_ref:
            - terminal emulator
            - short name
          ordinal_identifier: ''
  check_points_and_outputs: []
  parameters: []
