# Summarizr

Summarizr reads through source text and builds a list of significant keywords, then returns a shortened version of the article containing only the sections with the highest concentrations of these keywords. I have found that this method produces surprisingly good results despite its simplicity, particularly when most of the keywords are proper nouns (as tends to be true of news media articles).

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
