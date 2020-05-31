import os
import httpClient
from xmltree import `$`, innerText, attr
from htmlparser import parseHtml
import nimquery
import json

var client = newHttpClient()
var content = client.getcontent(paramStr(1))
var doc = parseHtml(content)
let elements = doc.querySelectorAll("[type=\"application/json+oembed\"]")
let el = elements[0]

let jj = parseJson(client.getcontent(el.attr("href")))

# technically oembed has four types:
# rich: arbitrary html
# video: basically arbitrary html
# photo: image url
# link: just metadata
# But realistically only video and rich are needed. 
echo jj["html"].getStr()
