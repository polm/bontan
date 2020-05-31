# bontan

A program to generate html embeds from URLs. You might want to use this to
generate embeds in a static blog without losing the source URL.

This just takes the URL, checks for a link to JSON OEmbed data, and pulls the
embeddable HTML out of that. That's simple but it works for YouTube, Vimeo, and
Twitter.

## Usage

You don't have to specify a width and height, but you can to get appropriately
sized content from the provider.

    Usage:
      getEmbed [required&optional-params]
    Options:
      -h, --help                       print this cligen-erated help
      --help-syntax                    advanced: prepend,plurals,..
      -u=, --url=    string  REQUIRED  set url
      -w=, --width=  int     -1        set width
      --height=      int     -1        set height

Example:

    ./bontan -w 700 -u https://www.youtube.com/watch?v=tgdY9k5_nEU

Output:

    <iframe width="459" height="344" src="https://www.youtube.com/embed/tgdY9k5_nEU?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## To Build

bontan is written in Nim. If you have nim and nimble installed:

    nimble build

Should do it.

## License

WTFPL, do as you please.
