curl 'https://wabi-us-gov-iowa-api.analysis.usgovcloudapi.net/public/reports/querydata?synchronous=true' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  -H 'sec-ch-ua: "Google Chrome";v="87", " Not;A Brand";v="99", "Chromium";v="87"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36' \
  -H 'ActivityId: 71fbe3a0-2808-4802-8678-5526d6e64523' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'RequestId: 55d872cd-b4c0-6aee-80b7-08517043c90b' \
  -H 'X-PowerBI-ResourceKey: da0f9423-f4be-4676-b242-4ecf4f49d002' \
  -H 'Content-Type: application/json;charset=UTF-8' \
  -H 'Origin: https://app.powerbigov.us' \
  -H 'Sec-Fetch-Site: cross-site' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://app.powerbigov.us/' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'dnt: 1' \
  -H 'sec-gpc: 1' \
  --data-binary $'{"version":"1.0.0","queries":[{"Query":{"Commands":[{"SemanticQueryDataShapeCommand":{"Query":{"Version":2,"From":[{"Name":"v","Entity":"Vaccine by Race","Type":0},{"Name":"n","Entity":"Navigation","Type":0}],"Select":[{"Column":{"Expression":{"SourceRef":{"Source":"v"}},"Property":"Race"},"Name":"Vaccine by Race.Race"},{"Aggregation":{"Expression":{"Column":{"Expression":{"SourceRef":{"Source":"v"}},"Property":" Partially Covered "}},"Function":0},"Name":"Sum(Vaccine by Race. Partially Covered )"},{"Aggregation":{"Expression":{"Column":{"Expression":{"SourceRef":{"Source":"v"}},"Property":"Fully Covered"}},"Function":0},"Name":"Sum(Vaccine by Race.Fully Covered)"}],"Where":[{"Condition":{"In":{"Expressions":[{"Column":{"Expression":{"SourceRef":{"Source":"n"}},"Property":"Page name"}}],"Values":[[{"Literal":{"Value":"\'Vaccines, by County\'"}}]]}}}],"OrderBy":[{"Direction":2,"Expression":{"Aggregation":{"Expression":{"Column":{"Expression":{"SourceRef":{"Source":"v"}},"Property":"Fully Covered"}},"Function":0}}}]},"Binding":{"Primary":{"Groupings":[{"Projections":[0,1,2]}]},"DataReduction":{"DataVolume":4,"Primary":{"Window":{"Count":1000}}},"Version":1}}}]},"CacheKey":"{\\"Commands\\":[{\\"SemanticQueryDataShapeCommand\\":{\\"Query\\":{\\"Version\\":2,\\"From\\":[{\\"Name\\":\\"v\\",\\"Entity\\":\\"Vaccine by Race\\",\\"Type\\":0},{\\"Name\\":\\"n\\",\\"Entity\\":\\"Navigation\\",\\"Type\\":0}],\\"Select\\":[{\\"Column\\":{\\"Expression\\":{\\"SourceRef\\":{\\"Source\\":\\"v\\"}},\\"Property\\":\\"Race\\"},\\"Name\\":\\"Vaccine by Race.Race\\"},{\\"Aggregation\\":{\\"Expression\\":{\\"Column\\":{\\"Expression\\":{\\"SourceRef\\":{\\"Source\\":\\"v\\"}},\\"Property\\":\\" Partially Covered \\"}},\\"Function\\":0},\\"Name\\":\\"Sum(Vaccine by Race. Partially Covered )\\"},{\\"Aggregation\\":{\\"Expression\\":{\\"Column\\":{\\"Expression\\":{\\"SourceRef\\":{\\"Source\\":\\"v\\"}},\\"Property\\":\\"Fully Covered\\"}},\\"Function\\":0},\\"Name\\":\\"Sum(Vaccine by Race.Fully Covered)\\"}],\\"Where\\":[{\\"Condition\\":{\\"In\\":{\\"Expressions\\":[{\\"Column\\":{\\"Expression\\":{\\"SourceRef\\":{\\"Source\\":\\"n\\"}},\\"Property\\":\\"Page name\\"}}],\\"Values\\":[[{\\"Literal\\":{\\"Value\\":\\"\'Vaccines, by County\'\\"}}]]}}}],\\"OrderBy\\":[{\\"Direction\\":2,\\"Expression\\":{\\"Aggregation\\":{\\"Expression\\":{\\"Column\\":{\\"Expression\\":{\\"SourceRef\\":{\\"Source\\":\\"v\\"}},\\"Property\\":\\"Fully Covered\\"}},\\"Function\\":0}}}]},\\"Binding\\":{\\"Primary\\":{\\"Groupings\\":[{\\"Projections\\":[0,1,2]}]},\\"DataReduction\\":{\\"DataVolume\\":4,\\"Primary\\":{\\"Window\\":{\\"Count\\":1000}}},\\"Version\\":1}}}]}","QueryId":"","ApplicationContext":{"DatasetId":"1e549164-aeab-4dcf-a97f-f70de27e715d","Sources":[{"ReportId":"53c72848-c634-4597-a571-54c087a01780"}]}}],"cancelQueries":[],"modelId":314528}' \
  --compressed | jq .
