########################################################################################################################
#!!
#! @input command: Command to execute.
#! @input command_1: Command to execute.
#!!#
########################################################################################################################
namespace: qotd
flow:
  name: qotd_install
  inputs:
    - command: ls
    - command_1: ls
  workflow:
    - ssh_command:
        do:
          qotd.ssh_command:
            - input_0: null
        navigate:
          - FAILURE: on_failure
          - SUCCESS: ssh_command_1
    - ssh_command_1:
        do:
          qotd.ssh_command: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      ssh_command:
        x: 80
        'y': 200
      ssh_command_1:
        x: 280
        'y': 200
        navigate:
          64dba6b6-77e1-0143-739e-752a52c112f3:
            targetId: 6d6891b5-66e5-f718-901a-60bacc50092b
            port: SUCCESS
    results:
      SUCCESS:
        6d6891b5-66e5-f718-901a-60bacc50092b:
          x: 680
          'y': 200
