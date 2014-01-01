# GreekStringUtils

## Note

This project is a subset of a larger private repo. I hope that it will become
public soon.

## Description

This module simply provides some methods to handle issues with greek letters

1. upperfix: In general greek strings dont preserve accents when upcase.
2. remove_accents: Simply removes all accents
3. greek_sort: Simply sorts correctly greek letters

For other cases (capitalize, downcase etc) +unicode+, +mb_chars+ etc are doing
their job very well.

## Install

```ruby
  gem install 'greek_string_utils'
```

## Usage

```ruby
  require 'greek_string_utils'
  include GreekStringUtils

  a = 'το 2012 η ελλάδα θα είναι δεύτερη σε ύφεση στον κόσμο'
  upperfix(a) # => 'ΤΟ 2012 Η ΕΛΛΑΔΑ ΘΑ ΕΙΝΑΙ ΔΕΥΤΕΡΗ ΣΕ ΥΦΕΣΗ ΣΤΟΝ ΚΟΣΜΟ'

  a = %w(αβ άβ άα αα)
  greek_sort(a) # => %w(άα αα άβ αβ)

  a = 'κρύο'
  remove_accents(a) # => 'κρυο'
```

if you want to use it in a rails app:

```ruby
  gem 'greek_string_utils'
```
And normally in application_helper.rb:

```ruby
  include GreekStringUtils
```

## Credits

Eric Cohen https://github.com/eirc


## License

greek_string_utils is released under the [MIT License](http://opensource.org/licenses/MIT)
