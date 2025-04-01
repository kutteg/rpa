########################################################################################################################
#!!
#! @input host: Hostname or IP address.
#! @input port: Port number for running the command.
#!              Default: '22'
#!              Optional
#! @input command: Command to execute.
#! @input username: Username to connect as.
#! @input password: Password of user.
#!                  Optional
#!!#
########################################################################################################################
namespace: qotd
flow:
  name: ssh_command
  inputs:
    - host: nbksbipfl4e9tim7.myfritz.net
    - port: '2002'
    - command: ls
    - username: pi
    - password:
        default: 4wencke
        sensitive: true
  workflow:
    - ssh_command:
        do:
          io.cloudslang.base.ssh.ssh_command:
            - host: '${host}'
            - port: '${port}'
            - command: '${command}'
            - username: '${username}'
            - password:
                value: '${password}'
                sensitive: true
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ssh_command:
        x: 400
        'y': 320
        navigate:
          9f62a8d4-9303-0a4c-33cf-3eb820d82455:
            targetId: 0532e074-bc61-17cb-5b64-ae477ea09f47
            port: SUCCESS
    results:
      SUCCESS:
        0532e074-bc61-17cb-5b64-ae477ea09f47:
          x: 840
          'y': 320
