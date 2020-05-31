# bontan

A program to generate html embeds from URLs. 

This just takes the URL, checks for a link to JSON OEmbed data, and pulls the
embeddable HTML out of that. That's simple but it works for YouTube, Vimeo, and
Twitter.

## Usage

By default width and height just take the default, though by setting values to
request yo u can get a size selected by the provider.

  Usage:
    getEmbed [required&optional-params]
  Options:
    -h, --help                       print this cligen-erated help
    --help-syntax                    advanced: prepend,plurals,..
    -u=, --url=    string  REQUIRED  set url
    -w=, --width=  int     -1        set width
    --height=      int     -1        set height

## License

WTFPL, do as you please.
