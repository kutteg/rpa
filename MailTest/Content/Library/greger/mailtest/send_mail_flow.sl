namespace: greger.mailtest
flow:
  name: send_mail_flow
  workflow:
    - send_mail:
        do:
          io.cloudslang.base.mail.send_mail:
            - hostname: smtp.googlemail.com
            - port: '25'
            - from: kurt.greger@microfocus.com
            - to: kutte.g@googlemail.com
            - subject: mailtest mit RPA
            - body: dies war ein RPA mail test
            - username: kutte.g
            - password:
                value: bsqklzvetrrmhbrn
                sensitive: true
            - enable_TLS: 'true'
            - proxy_host: web-proxy.eu.softwaregrp.net
            - proxy_port: '8080'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      send_mail:
        x: 135
        'y': 181
        navigate:
          135ab5b7-56ca-4621-f5d5-dc3c2b0fde94:
            targetId: 646f1834-978c-bc27-4bd1-32a92ceab2f1
            port: SUCCESS
    results:
      SUCCESS:
        646f1834-978c-bc27-4bd1-32a92ceab2f1:
          x: 465
          'y': 183
