namespace: greger.ocrtest
flow:
  name: tesseract_setup_flow
  workflow:
    - tesseract_setup:
        do:
          io.cloudslang.tesseract.ocr.utils.tesseract_setup:
            - data_path: "C:\\RPAInput\\tesseract"
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      tesseract_setup:
        x: 143.02476501464844
        'y': 192.02476501464844
        navigate:
          eb34bf8b-37d3-ebee-ed80-da5cba484c16:
            targetId: e3df68ba-d07c-da22-f1fb-6d8d7d419226
            port: SUCCESS
    results:
      SUCCESS:
        e3df68ba-d07c-da22-f1fb-6d8d7d419226:
          x: 421
          'y': 191
