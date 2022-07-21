namespace: greger.webtest
operation:
  name: firefox_action
  sequential_action:
    gav: com.microfocus.seq:greger.webtest.firefox_action:1.0.0
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
      name: Google Search — Mozilla
      properties:
      - property:
          value:
            value: Google Search — Mozilla Firefox
            regular_expression: false
          name: regexpwndtitle
          hidden: false
          read_only: false
          type: STRING
      - property:
          value:
            value: MozillaWindowClass
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
          value: MozillaWindowClass
          name: simclass
          type: STRING
      comments: ''
      visual_relations: ''
      last_update_time: Mittwoch, 20. Juli 2022 17:07:37
      child_objects: []
  check_points_and_outputs: []
  parameters: []
