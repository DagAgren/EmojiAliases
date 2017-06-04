# EmojiAliases #

This is an extension for the String class in Swift to convert emoji alias codes,
such as `:heart_eyes:` into an Unicode emoji characters, such as 😍.

## Installation ##

Just download and copy EmojiAlias.swift into your project. It's just a single file.

The other files in this repo are just utilities to build the list of emoji from a JSON
file.

## Usage ##

    let string = ":dragon_face:"
    let converted = string.replacingEmojiAliases
    print(converted)

## Author ##

Dag Ågren ([paracelsus@gmail.com](mailto:paracelsus@gmail.com),
[@WAHa_06x36](https://twitter.com/WAHa_06x36),
[@WAHa_06x36@mastodon.social](https://mastodon.social/@WAHa_06x36),
[wakaba.c3.cx](http://wakaba.c3.cx/))

## License ##

This code is released into the public domain with no warranties. If that
is not suitable, it is also available under the
[CC0 license](http://creativecommons.org/publicdomain/zero/1.0/).
