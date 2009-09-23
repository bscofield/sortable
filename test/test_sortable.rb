require 'pp'
require File.dirname(__FILE__) + '/test_helper.rb'

class TestBook
  attr_accessor :author, :title
  
  def initialize(author, title)
    self.author = author
    self.title  = title
  end
end

class TestSortable < Test::Unit::TestCase
  def setup
    @fforde  = TestBook.new('Fforde', 'Something Rotten')
    @stroud1 = TestBook.new('Stroud', 'The Golem\'s Eye')
    @stroud2 = TestBook.new('Stroud', 'The Amulet of Samarkand')
    @colfer  = TestBook.new('Colfer', 'Artemis Fowl')
    
    @books = [@fforde, @stroud1, @stroud2, @colfer]
  end
  
  def test_sortable_should_be_defined
    assert_nothing_raised do
      Sortable
    end
  end
  
  def test_object_should_include_sortable
    assert Object.ancestors.include?(Sortable)
  end
  
  def test_object_should_have_sortable_method
    assert Object.respond_to?(:sortable)
  end
  
  def test_books_should_sort_by_author_and_title
    TestBook.send(:sortable, :author, :title)
    
    assert_equal [@colfer, @fforde, @stroud2, @stroud1], @books.sort
  end
  
  def test_books_should_sort_by_unaltered_title
    TestBook.send(:sortable, :title, :author)
    
    assert_equal [@colfer, @fforde, @stroud2, @stroud1], @books.sort
  end
  
  def test_books_should_sort_by_altered_title
    TestBook.send(:sortable, lambda {|book| book.title.sub(/^(The|A|An) /, '')}, :author)
    
    assert_equal [@stroud2, @colfer, @stroud1, @fforde], @books.sort
  end
end
