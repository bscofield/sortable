module Sortable
  VERSION = '0.0.1'
  
  def self.included(base)
    base.extend Sortable::ClassMethods
  end
  
  module ClassMethods
    def sortable(*sorters)
      define_method :"<=>", lambda { |other|
        comp = 0
        sorters.each do |sorter|
          comp = if sorter.respond_to?(:call)
            sorter.call(self) <=> sorter.call(other)
          else
            self.send(sorter) <=> other.send(sorter)
          end

          break if comp != 0
        end
        comp
      }
    end
  end
end

Object.send(:include, Sortable)
