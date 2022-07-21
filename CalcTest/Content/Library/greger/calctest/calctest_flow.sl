########################################################################################################################
#!!
#! @description: calculate 4 times 8
#!!#
########################################################################################################################
namespace: greger.calctest
flow:
  name: calctest_flow
  workflow:
    - calctest:
        do:
          greger.calctest.calctest: []
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      calctest:
        x: 240.0235595703125
        'y': 200.01885986328125
        navigate:
          a497b78f-bf1c-18d3-f2a2-a4dd940447e4:
            targetId: f97432fd-0713-c96a-9143-e0909329b991
            port: SUCCESS
          b7c1fa1b-c5d2-a863-dcbb-9c4c42f70c6d:
            targetId: f97432fd-0713-c96a-9143-e0909329b991
            port: WARNING
    results:
      SUCCESS:
        f97432fd-0713-c96a-9143-e0909329b991:
          x: 605
          'y': 203
