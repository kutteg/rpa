namespace: greger.cstest
operation:
  name: cstest_python_sha1
  inputs:
    - text: KurtGreger
  python_action:
    use_jython: false
    script: "import hashlib\r\ndef execute(text):\r\n    return { 'sha1': hashlib.sha1(text.encode('utf-8')).hexdigest() }"
  outputs:
    - sha1: '${sha1}'
  results:
    - SUCCESS
