class BagOfWords
  attr_reader :bag
  def initialize(docs)
    @docs = docs
    @bag = []

    magic
  end

  def dictionary
    Hash[unique_items.zip (1..unique_items.size)]
  end

  private

  def magic
    @docs.map! { |doc| doc.gsub(/[^\w| ]/, '').split }

    @docs.each do |doc|
      @bag << dictionary.map { |key, value| doc.select { |item| item == key }.count }
    end
  end

  def words_only
    @docs.join(' ').gsub(/[^\w| ]/, '').split
  end

  def unique_items
    words_only.uniq
  end

end
