import os
import httpClient
from xmltree import `$`, innerText, attr
from htmlparser import parseHtml
import nimquery
import json

echo paramStr(1)
var client = newHttpClient()
var content = client.getcontent(paramStr(1))
var doc = parseHtml(content)
let elements = doc.querySelectorAll("[type=\"application/json+oembed\"]")
let el = elements[0]

let jj = parseJson(client.getcontent(el.attr("href")))

echo jj["html"].getStr()
echo "-----"


