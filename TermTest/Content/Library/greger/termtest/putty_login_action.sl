namespace: greger.termtest
operation:
  name: putty_login_action
  inputs:
    - user: root
    - password:
        sensitive: true
        default: 'HPS0ftware!'
  sequential_action:
    gav: 'com.microfocus.seq:greger.termtest.putty_login_action:1.0.0'
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
        current_emulator: PuTTY
      web:
        active: false
        close_on_exit: false
    steps:
      - step:
          id: '3'
          object_path: 'Window("PuTTY")'
          action: Type
          default_args: '"root"'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '197766'
          args: 'Parameter("user")'
      - step:
          id: '4'
          object_path: 'Window("PuTTY")'
          action: Type
          default_args: micReturn
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '197766'
      - step:
          id: '5'
          object_path: 'Window("PuTTY")'
          action: Type
          default_args: '"HPS0ftware!"'
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: '197766'
          args: 'Parameter("password")'
      - step:
          id: '6'
          object_path: 'Window("PuTTY")'
          action: Type
          default_args: micReturn
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '197766'
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
        smart_identification: ''
        name: PuTTY Configuration
        child_objects:
          - object:
              smart_identification: ''
              name: Open
              child_objects: []
              properties:
                - property:
                    value:
                      value: '&Open'
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
              last_update_time: 'Freitag, 19. August 2022 11:10:05'
              basic_identification:
                property_ref:
                  - text
                  - nativeclass
                ordinal_identifier: ''
          - object:
              smart_identification: ''
              name: Load
              child_objects: []
              properties:
                - property:
                    value:
                      value: '&Load'
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
              last_update_time: 'Freitag, 19. August 2022 11:10:05'
              basic_identification:
                property_ref:
                  - text
                  - nativeclass
                ordinal_identifier: ''
        properties:
          - property:
              value:
                value: PuTTY Configuration
                regular_expression: false
              name: regexpwndtitle
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: PuTTYConfigBox
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
            value: PuTTYConfigBox
            name: simclass
            type: STRING
        class: Window
        visual_relations: ''
        last_update_time: 'Freitag, 19. August 2022 11:10:05'
        basic_identification:
          property_ref:
            - regexpwndtitle
            - regexpwndclass
            - is owned window
            - is child window
          ordinal_identifier: ''
    - object:
        smart_identification: ''
        name: PuTTY
        child_objects: []
        properties:
          - property:
              value:
                value: PuTTY
                regular_expression: false
              name: regexpwndtitle
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: PuTTY
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
            value: PuTTY
            name: simclass
            type: STRING
        class: Window
        visual_relations: ''
        last_update_time: 'Freitag, 19. August 2022 11:10:05'
        basic_identification:
          property_ref:
            - regexpwndtitle
            - regexpwndclass
            - is owned window
            - is child window
          ordinal_identifier: ''
  check_points_and_outputs: []
  parameters: []
