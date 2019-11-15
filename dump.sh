s_id=`curl -X POST localhost:17556/session  -d '{"desiredCapabilities":{"browserName":"MicrosoftEdge"}, "capabilities":{"alwaysMatch":{"browserName":"MicrosoftEdge"}}}' | awk -F'"' '{print $6}'`
echo $s_id
curl -X POST localhost:17556/session/$s_id/url -d '{"url":"https://google.com"}'
curl -X POST localhost:17556/session/$s_id/ms/dumpInternal -d '{"value":"dump-type=display;"}' -o result
