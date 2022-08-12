namespace: greger.mailtest
flow:
  name: get_mail_flow
  inputs:
    - mailhost: imap.googlemail.com
    - username: kutte.g
    - password:
        default: bsqklzvetrrmhbrn
        sensitive: true
    - proxy_host: web-proxy.eu.softwaregrp.net
    - proxy_port: '8080'
    - port: '993'
    - protocol: imap
  workflow:
    - get_mail_message_count:
        do:
          io.cloudslang.base.mail.get_mail_message_count:
            - host: '${mailhost}'
            - port: '${port}'
            - protocol: '${protocol}'
            - username: '${username}'
            - password:
                value: '${password}'
                sensitive: true
            - folder: INBOX
            - proxy_host: '${proxy_host}'
            - proxy_port: '${proxy_port}'
            - enable_SSL: 'true'
            - trust_all_roots: 'true'
        publish:
          - anzahl: '${return_result}'
        navigate:
          - SUCCESS: counter
          - FAILURE: on_failure
    - get_mail_message:
        do:
          io.cloudslang.base.mail.get_mail_message:
            - host: '${mailhost}'
            - port: '${port}'
            - protocol: '${protocol}'
            - username: '${username}'
            - password:
                value: '${password}'
                sensitive: true
            - message_number: '${aktuell}'
            - proxy_host: '${proxy_host}'
            - proxy_port: '${proxy_port}'
            - enable_SSL: 'true'
            - trust_all_roots: 'true'
        publish:
          - attachments: '${attached_file_names}'
        navigate:
          - SUCCESS: is_null
          - FAILURE: on_failure
    - counter:
        do:
          io.cloudslang.hashicorp.terraform.utils.counter:
            - from: '1'
            - to: '${anzahl}'
        publish:
          - aktuell: '${result_string}'
        navigate:
          - HAS_MORE: get_mail_message
          - NO_MORE: SUCCESS
          - FAILURE: on_failure
    - get_mail_attachment:
        do:
          io.cloudslang.base.mail.get_mail_attachment:
            - host: '${mailhost}'
            - port: '${port}'
            - protocol: '${protocol}'
            - username: '${username}'
            - password:
                value: '${password}'
                sensitive: true
            - message_number: '${aktuell}'
            - destination: "C:\\Temp\\AWS"
            - attachment_name: '${attachments}'
            - trust_all_roots: 'true'
            - proxy_host: '${proxy_host}'
            - proxy_port: '${proxy_port}'
            - enable_SSL: 'true'
        navigate:
          - SUCCESS: counter
          - FAILURE: on_failure
    - is_null:
        do:
          io.cloudslang.base.utils.is_null:
            - variable: '${attachments}'
        navigate:
          - IS_NULL: counter
          - IS_NOT_NULL: get_mail_attachment
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_mail_message_count:
        x: 105
        'y': 287
      get_mail_message:
        x: 643
        'y': 161
      counter:
        x: 468
        'y': 424
        navigate:
          794b29b2-2f72-ebcb-d43d-6c8596c601ab:
            targetId: dada92d5-1366-12f9-11d6-7fe453c48733
            port: NO_MORE
      get_mail_attachment:
        x: 278
        'y': 157
      is_null:
        x: 463
        'y': 73
    results:
      SUCCESS:
        dada92d5-1366-12f9-11d6-7fe453c48733:
          x: 836
          'y': 281
