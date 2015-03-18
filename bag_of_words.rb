class BagOfWords
  def initialize(docs)
    @docs = docs
    @bag = []

    magic
  end

  def words_only
    @docs.join(' ').gsub(/[^\w| ]/, '').split
  end

  def unique_items
    words_only.uniq
  end

  def dictionary
    Hash[unique_items.zip (1..unique_items.size)]
  end

  def magic
    @docs.map! { |doc| doc.gsub(/[^\w| ]/, '').split }

    @docs.each do |doc|
      @bag << dictionary.map { |key, value| doc.select { |item| item == key }.count }
    end
  end

  def bag
    @bag
  end
end
