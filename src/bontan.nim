import os
import httpClient
from xmltree import `$`, innerText, attr
from htmlparser import parseHtml
import nimquery
import json
from strformat import `&`

proc getEmbed(url: string, width: int= -1, height: int= -1): string =
  # Given a URL, get the HTML for embedding it.
  let client = newHttpClient()

  var content = ""

  try:
    content = client.getContent(url)
  except ValueError:
    echo "Couldn't fetch the page"
    quit 1

  let doc = parseHtml(content)

  # In some cases only XML may be available, but just ignore it.
  let elements = doc.querySelectorAll("[type=\"application/json+oembed\"]")
  if len(elements) == 0:
    echo "No OEmbed URL found"
    quit 1

  var oembedURL = elements[0].attr("href")
  if width > 0:
    oembedURL = oembedURL & (&"&maxwidth={width}")
  if height > 0:
    oembedURL = oembedURL & (&"&maxheight={height}")

  var jj: JsonNode;
  try:
    jj = parseJson(client.getcontent(oembedURL))
  except:
    echo "Error parsing JSON"
    quit 1

  try:
    result = jj["html"].getStr()
  except:
    # Technically some kinds of OEmbed won't have an html property, but they're
    # rarely used (and don't really need OEmbed anyway.)
    echo "Couldn't get HTML for embedding"
    quit 1
  
  return result

import cligen
when isMainModule:
  dispatch(getEmbed)

