namespace: greger.ocrtest
flow:
  name: ocr_flow
  workflow:
    - extract_text_from_pdf:
        do:
          io.cloudslang.tesseract.ocr.extract_text_from_pdf:
            - file_path: "C:\\RPAInput\\ocrtest.pdf"
            - data_path: "C:\\RPAInput\\tesseract"
            - language: ENG
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      extract_text_from_pdf:
        x: 186.02476501464844
        'y': 205.9158477783203
        navigate:
          615a86dc-81c5-6420-b188-45324225ffc7:
            targetId: 480b6dbd-59a6-3d4a-98d3-e91aa44371a5
            port: SUCCESS
    results:
      SUCCESS:
        480b6dbd-59a6-3d4a-98d3-e91aa44371a5:
          x: 526
          'y': 208
