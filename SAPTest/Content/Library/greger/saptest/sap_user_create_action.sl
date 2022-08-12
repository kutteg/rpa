namespace: greger.saptest
operation:
  name: sap_user_create_action
  inputs:
  - user
  - password
  - firstname
  - lastname
  - email
  sequential_action:
    gav: com.microfocus.seq:greger.saptest.sap_user_create_action:1.0.0
    skills:
    - Java
    - SAP NWBC Desktop
    - SAP
    - SAPUI5
    - SAPWDJ
    - SAPWebExt
    - Terminal Emulators
    - UI Automation
    - Web
    - WPF
    settings:
      sap:
        active: true
        auto_log_on: true
        client: '800'
        close_on_exit: true
        ignore_existing_sessions: true
        language: EN
        password: '{OBFUSCATED}JDbHVxXjX0jtuuZ9C2rGCQ=='
        remember_password: false
        server: ECC6
        user: admin
      windows:
        active: false
      terminal_settings:
        active: false
      web:
        active: false
        address: ''
        browser: IE64
        close_on_exit: false
    steps:
    - step:
        id: '1'
        object_path: SAPGuiSession("Session").SAPGuiWindow("SAP Easy Access")
        action: Resize
        args: 92,19
    - step:
        id: '2'
        object_path: SAPGuiSession("Session").SAPGuiWindow("SAP Easy Access").SAPGuiOKCode("OKCode")
        action: Set
        args: '"SU01"'
        snapshot: .\Snapshots\ssf1.png
        highlight_id: '21'
    - step:
        id: '3'
        object_path: SAPGuiSession("Session").SAPGuiWindow("SAP Easy Access")
        action: SendKey
        args: ENTER
        snapshot: .\Snapshots\ssf1.png
        highlight_id: '0'
    - step:
        id: '4'
        object_path: 'SAPGuiSession("Session").SAPGuiWindow("User Maintenance: Initial").SAPGuiEdit("User")'
        action: Set
        args: Parameter("user")
        snapshot: .\Snapshots\ssf2.png
        highlight_id: '32'
    - step:
        id: '5'
        object_path: 'SAPGuiSession("Session").SAPGuiWindow("User Maintenance: Initial").SAPGuiButton("Create   (F8)")'
        action: Click
        snapshot: .\Snapshots\ssf2.png
        highlight_id: '29'
    - step:
        id: '6'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain Address Data").SAPGuiButton("No")
        action: Click
        snapshot: .\Snapshots\ssf3.png
        highlight_id: '3'
    - step:
        id: '7'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiEdit("Last
          name")
        action: Set
        args: Parameter("lastname")
        snapshot: .\Snapshots\ssf4.png
        highlight_id: '-1'
    - step:
        id: '8'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiEdit("First
          name")
        action: Set
        args: Parameter("firstname")
        snapshot: .\Snapshots\ssf4.png
        highlight_id: '-1'
    - step:
        id: '9'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiEdit("E-Mail")
        action: Set
        args: Parameter("email")
        snapshot: .\Snapshots\ssf4.png
        highlight_id: '46'
    - step:
        id: '10'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiEdit("E-Mail")
        action: SetFocus
        snapshot: .\Snapshots\ssf4.png
        highlight_id: '46'
    - step:
        id: '11'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiTabStrip("TABSTRIP1")
        action: Select
        args: '"Logon data"'
        snapshot: .\Snapshots\ssf4.png
        highlight_id: '28'
    - step:
        id: '12'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiEdit("Initial
          password")
        action: Set
        args: Parameter("password")
        snapshot: .\Snapshots\ssf5.png
        highlight_id: '42'
    - step:
        id: '13'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiEdit("Repeat
          password")
        action: Set
        args: Parameter("password")
        snapshot: .\Snapshots\ssf5.png
        highlight_id: '43'
    - step:
        id: '14'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiEdit("Repeat
          password")
        action: SetFocus
        snapshot: .\Snapshots\ssf5.png
        highlight_id: '43'
    - step:
        id: '15'
        object_path: SAPGuiSession("Session").SAPGuiWindow("Maintain User").SAPGuiButton("Save   (Ctrl+S)")
        action: Click
        snapshot: .\Snapshots\ssf5.png
        highlight_id: '6'
    - step:
        id: '16'
        object_path: 'SAPGuiSession("Session").SAPGuiWindow("User Maintenance: Initial").SAPGuiStatusBar("StatusBar")'
        action: Sync
        snapshot: .\Snapshots\ssf6.png
        highlight_id: '1'
    - step:
        id: '17'
        object_path: 'SAPGuiSession("Session").SAPGuiWindow("User Maintenance: Initial").SAPGuiStatusBar("StatusBar")'
        action: Output
        args: CheckPoint("resultmessage")
  outputs:
  - resultmessage:
      robot: true
      value: ${resultmessage}
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
object_repository:
  objects:
  - object:
      class: SAPGuiSession
      name: Session
      properties:
      - property:
          value:
            value: ses[0]
            regular_expression: false
          name: name
          hidden: false
          read_only: false
          type: STRING
      - property:
          value:
            value: SAPGuiSession
            regular_expression: false
          name: micclass
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: '0'
            regular_expression: false
          name: hightlight id
          hidden: true
          read_only: true
          type: NUMBER
      - property:
          value:
            value: '12'
            regular_expression: false
          name: guicomponenttype
          hidden: false
          read_only: false
          type: NUMBER
      - property:
          value:
            value: /app/con[0]/ses[0]
            regular_expression: false
          name: compidstr
          hidden: true
          read_only: true
          type: STRING
      basic_identification:
        property_ref:
        - name
        - micclass
        - guicomponenttype
        ordinal_identifier: ''
      smart_identification: ''
      custom_replay: ''
      comments: ''
      visual_relations: ''
      last_update_time: Dienstag, 1. Juni 2021 13:54:29
      child_objects:
      - object:
          class: SAPGuiWindow
          name: 'User Maintenance: Initial'
          properties:
          - property:
              value:
                value: SU01
                regular_expression: false
              name: transaction
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '50'
                regular_expression: false
              name: screennumber
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: SAPLSUU5
                regular_expression: false
              name: program
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: wnd[0]
                regular_expression: false
              name: name
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: SAPGuiWindow
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '0'
                regular_expression: false
              name: hightlight id
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: '21'
                regular_expression: false
              name: guicomponenttype
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: wnd[0]
                regular_expression: false
              name: compidstr
              hidden: true
              read_only: true
              type: STRING
          basic_identification:
            property_ref:
            - transaction
            - screennumber
            - program
            - name
            - micclass
            - guicomponenttype
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay: ''
          comments: ''
          visual_relations: ''
          last_update_time: Dienstag, 1. Juni 2021 13:54:29
          child_objects:
          - object:
              class: SAPGuiStatusBar
              name: StatusBar
              properties:
              - property:
                  value:
                    value: SAPGuiStatusBar
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '103'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/sbar
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
          - object:
              class: SAPGuiEdit
              name: User
              properties:
              - property:
                  value:
                    value: USR02-BNAME
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiEdit
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '32'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/usr/ctxtUSR02-BNAME
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
          - object:
              class: SAPGuiButton
              name: Create   (F8)
              properties:
              - property:
                  value:
                    value: btn[8]
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiButton
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '40'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/tbar[1]/btn[8]
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
      - object:
          class: SAPGuiWindow
          name: SAP Easy Access
          properties:
          - property:
              value:
                value: SESSION_MANAGER
                regular_expression: false
              name: transaction
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '100'
                regular_expression: false
              name: screennumber
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: SAPLSMTR_NAVIGATION
                regular_expression: false
              name: program
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: wnd[0]
                regular_expression: false
              name: name
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: SAPGuiWindow
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '0'
                regular_expression: false
              name: hightlight id
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: '21'
                regular_expression: false
              name: guicomponenttype
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: wnd[0]
                regular_expression: false
              name: compidstr
              hidden: true
              read_only: true
              type: STRING
          basic_identification:
            property_ref:
            - transaction
            - screennumber
            - program
            - name
            - micclass
            - guicomponenttype
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay: ''
          comments: ''
          visual_relations: ''
          last_update_time: Dienstag, 1. Juni 2021 13:54:29
          child_objects:
          - object:
              class: SAPGuiOKCode
              name: OKCode
              properties:
              - property:
                  value:
                    value: SAPGuiOKCode
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '35'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/tbar[0]/okcd
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
      - object:
          class: SAPGuiWindow
          name: Maintain User
          properties:
          - property:
              value:
                value: SU01
                regular_expression: false
              name: transaction
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '100'
                regular_expression: false
              name: screennumber
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: SAPLSUU5
                regular_expression: false
              name: program
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: wnd[0]
                regular_expression: false
              name: name
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: SAPGuiWindow
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '0'
                regular_expression: false
              name: hightlight id
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: '21'
                regular_expression: false
              name: guicomponenttype
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: wnd[0]
                regular_expression: false
              name: compidstr
              hidden: true
              read_only: true
              type: STRING
          basic_identification:
            property_ref:
            - transaction
            - screennumber
            - program
            - name
            - micclass
            - guicomponenttype
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay: ''
          comments: ''
          visual_relations: ''
          last_update_time: Dienstag, 1. Juni 2021 13:54:29
          child_objects:
          - object:
              class: SAPGuiTabStrip
              name: TABSTRIP1
              properties:
              - property:
                  value:
                    value: TABSTRIP1
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiTabStrip
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '90'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/usr/tabsTABSTRIP1
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
          - object:
              class: SAPGuiEdit
              name: Repeat password
              properties:
              - property:
                  value:
                    value: G_PASSWORD2
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiEdit
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '33'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/usr/tabsTABSTRIP1/tabpLOGO/ssubMAINAREA:SAPLSUU5:0101/pwdG_PASSWORD2
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
          - object:
              class: SAPGuiEdit
              name: Last name
              properties:
              - property:
                  value:
                    value: ADDR3_DATA-NAME_LAST
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiEdit
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '31'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/usr/tabsTABSTRIP1/tabpADDR/ssubMAINAREA:SAPLSZA5:0900/txtADDR3_DATA-NAME_LAST
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
          - object:
              class: SAPGuiEdit
              name: Initial password
              properties:
              - property:
                  value:
                    value: G_PASSWORD1
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiEdit
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '33'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/usr/tabsTABSTRIP1/tabpLOGO/ssubMAINAREA:SAPLSUU5:0101/pwdG_PASSWORD1
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
          - object:
              class: SAPGuiEdit
              name: First name
              properties:
              - property:
                  value:
                    value: ADDR3_DATA-NAME_FIRST
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiEdit
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '31'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/usr/tabsTABSTRIP1/tabpADDR/ssubMAINAREA:SAPLSZA5:0900/txtADDR3_DATA-NAME_FIRST
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
          - object:
              class: SAPGuiEdit
              name: E-Mail
              properties:
              - property:
                  value:
                    value: SZA5_D0700-SMTP_ADDR
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiEdit
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '31'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/usr/tabsTABSTRIP1/tabpADDR/ssubMAINAREA:SAPLSZA5:0900/txtSZA5_D0700-SMTP_ADDR
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
          - object:
              class: SAPGuiButton
              name: Save   (Ctrl+S)
              properties:
              - property:
                  value:
                    value: btn[11]
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiButton
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '40'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[0]/tbar[0]/btn[11]
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
      - object:
          class: SAPGuiWindow
          name: Maintain Address Data
          properties:
          - property:
              value:
                value: SU01
                regular_expression: false
              name: transaction
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '500'
                regular_expression: false
              name: screennumber
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: SAPLSPO1
                regular_expression: false
              name: program
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: wnd[1]
                regular_expression: false
              name: name
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: SAPGuiWindow
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '0'
                regular_expression: false
              name: hightlight id
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: '22'
                regular_expression: false
              name: guicomponenttype
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: wnd[1]
                regular_expression: false
              name: compidstr
              hidden: true
              read_only: true
              type: STRING
          basic_identification:
            property_ref:
            - transaction
            - screennumber
            - program
            - name
            - micclass
            - guicomponenttype
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay: ''
          comments: ''
          visual_relations: ''
          last_update_time: Dienstag, 1. Juni 2021 13:54:29
          child_objects:
          - object:
              class: SAPGuiButton
              name: 'No'
              properties:
              - property:
                  value:
                    value: BUTTON_2
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SAPGuiButton
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '40'
                    regular_expression: false
                  name: guicomponenttype
                  hidden: false
                  read_only: false
                  type: NUMBER
              - property:
                  value:
                    value: wnd[1]/usr/btnBUTTON_2
                    regular_expression: false
                  name: compidstr
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                - guicomponenttype
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Dienstag, 1. Juni 2021 13:54:29
              child_objects: []
  check_points_and_outputs:
  - check_point_and_output:
      standard_properties:
        standard_property:
        - value: ''
          visual_relations: ''
          parameter:
            value: '"resultmessage"'
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
      name: resultmessage
      type: Output
      class: VerifyObj
  parameters: []
