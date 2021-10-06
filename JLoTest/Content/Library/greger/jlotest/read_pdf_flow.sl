namespace: greger.jlotest
flow:
  name: read_pdf_flow
  workflow:
    - extract_text_from_pdf:
        do:
          io.cloudslang.tesseract.ocr.extract_text_from_pdf:
            - file_path: "C:\\RPAInput\\ocrtest.pdf"
            - data_path: "C:\\RPAInput\\tesseract"
            - language: ENG
            - text_blocks: null
        publish:
          - returnstring: '${return_result}'
        navigate:
          - SUCCESS: list_iterator
          - FAILURE: on_failure
    - list_iterator:
        do:
          io.cloudslang.base.lists.list_iterator:
            - list: '${returnstring}'
            - separator: "\\n"
        publish:
          - line: '${result_string}'
        navigate:
          - HAS_MORE: get_by_index
          - NO_MORE: SUCCESS
          - FAILURE: on_failure
    - get_by_index:
        do:
          io.cloudslang.base.lists.get_by_index:
            - list: '${line}'
            - delimiter: ' '
            - index: '0'
        publish:
          - value: '${return_result}'
        navigate:
          - SUCCESS: sleep
          - FAILURE: on_failure
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '1'
        navigate:
          - SUCCESS: list_iterator
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      extract_text_from_pdf:
        x: 83
        'y': 200
      list_iterator:
        x: 333
        'y': 162
        navigate:
          05502819-a68e-af2c-6235-c94276126796:
            targetId: 480b6dbd-59a6-3d4a-98d3-e91aa44371a5
            port: NO_MORE
      get_by_index:
        x: 419
        'y': 355
      sleep:
        x: 264
        'y': 364
    results:
      SUCCESS:
        480b6dbd-59a6-3d4a-98d3-e91aa44371a5:
          x: 603
          'y': 202
