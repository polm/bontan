# Package

version     = "0.1.0"
author      = "Paul O'Leary McCann"
description = "Fetch HTML for embedding content"
license     = "WTFPL"
srcDir      = "src"
bin         = @["bontan"]
skipExt     = @["nim"]

# Deps

requires "nim >= 1.2.0"
requires "nimquery >= 1.2.2"
requires "cligen >= 1.0.0"
