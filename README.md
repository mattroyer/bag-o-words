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

This gives you the following output:

```
{"John"=>1, "likes"=>2, "to"=>3, "watch"=>4, "movies"=>5, "Mary"=>6, "too"=>7, "also"=>8, "football"=>9, "games"=>10}
[1, 2, 1, 1, 2, 1, 1, 0, 0, 0]
[1, 1, 1, 1, 0, 0, 0, 1, 1, 1]
```
