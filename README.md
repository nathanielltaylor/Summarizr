# Summarizr

An old project revisited, finally seems to be working properly.

Summarizr reads through source text and builds a list of the most-used words, which it designates as keywords. It then returns an edited version of the article containing only the sections that make the most use of these keywords. This tends to produce better results the heavier the source text is in proper nouns; it is designed to be used with news media articles but can be adapted for other purposes as well.

## Usage
```ruby
Summarizr.summarize(long_article_as_string) #=> summarized_version

```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'summarizr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install summarizr

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
