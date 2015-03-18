# bag-o-words

####Example Usage

> I pulled the `docs` from this wikipedia article: https://en.wikipedia.org/wiki/Bag-of-words_model

```ruby
docs = ["John likes to watch movies. Mary likes movies too.", "John also likes to watch football games."]

my_bag = BagOfWords.new(docs)

p my_bag.dictionary

my_bag.bag.each do |b|
  p b
end
```
