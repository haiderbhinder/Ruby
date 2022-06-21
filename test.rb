module Orders
    class Order
      attr_accessor :id
  
      def initialize(id)
        @id = id
      end
  
      def print
        puts @id
      end
  
      def total_price(items)
        items.map { |item| item.price }.sum
      end
    end
  
    class OrderItem
      attr_accessor :name, :price, :order_id
  
      def initialize(name, price, order_id)
        @name = name
        @price = price
        @order_id = order_id
      end
    end
  end
  
  module Generators
    class Price
      class << self
        def generate
          (rand * 100).round
        end
      end
    end
  end
  
  
  order = Orders::Order.new(Generators::Price.generate)
  order_items = []
  order_items << Orders::OrderItem.new('milk', Generators::Price.generate, order.id)
  order_items << Orders::OrderItem.new('tea', Generators::Price.generate, order.id)
  order_items << Orders::OrderItem.new('bread', Generators::Price.generate, order.id)
  p order_items
  total = order.total_price(order_items)
  puts "Order with id #{order.id} has total amount #{total}"
  puts
  puts
  
  order = Orders::Order.new(Generators::Price.generate)
  order_items = []
  order_items << Orders::OrderItem.new('milk', Generators::Price.generate, order.id)
  order_items << Orders::OrderItem.new('tea', Generators::Price.generate, order.id)
  order_items << Orders::OrderItem.new('bread', Generators::Price.generate, order.id)
  p order_items
  total = order.total_price(order_items)
  puts "Order with id #{order.id} has total amount #{total}"
  puts
  puts
  
  order = Orders::Order.new(Generators::Price.generate)
  order_items = []
  order_items << Orders::OrderItem.new('milk', Generators::Price.generate, order.id)
  order_items << Orders::OrderItem.new('tea', Generators::Price.generate, order.id)
  order_items << Orders::OrderItem.new('bread', Generators::Price.generate, order.id)
  p order_items
  total = order.total_price(order_items)
  puts "Order with id #{order.id} has total amount #{total}"
  puts
  puts
  
  order = Orders::Order.new(Generators::Price.generate)
  order_items = []
  order_items << Orders::OrderItem.new('milk', Generators::Price.generate, order.id)
  order_items << Orders::OrderItem.new('tea', Generators::Price.generate, order.id)
  order_items << Orders::OrderItem.new('bread', Generators::Price.generate, order.id)
  p order_items
  total = order.total_price(order_items)
  puts "Order with id #{order.id} has total amount #{total}"
  puts
  puts