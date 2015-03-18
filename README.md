# bag-o-words

####Example Usage

```ruby
docs = ["John likes to watch movies. Mary likes movies too.", "John also likes to watch football games."]

my_bag = BagOfWords.new(docs)

p my_bag.dictionary

my_bag.bag.each do |b|
  p b
end
```
