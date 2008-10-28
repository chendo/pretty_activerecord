require File.dirname(__FILE__) + '/test_helper.rb'

class TestPrettyActiverecord < Test::Unit::TestCase
  context "ActiveRecord with columns" do
    setup do
      @klass = Class.new
      ::Person = @klass
      @klass.send(:include, PrettyActiveRecord)
      column_names = %w[id first_name last_name bio age height date_of_birth human]
      @klass.stubs(:column_names).returns(column_names)
      @klass.stubs(:columns_hash).returns({
        'id'            => stub(:type => :integer, :limit => 4),
        'first_name'    => stub(:type => :string, :limit => 255),
        'last_name'     => stub(:type => :string, :limit => 255),
        'bio'           => stub(:type => :text, :limit => nil),
        'age'           => stub(:type => :integer, :limit => nil),
        'height'        => stub(:type => :decimal, :limit => 8),
        'date_of_birth' => stub(:type => :datetime, :limit => nil),
        'human'         => stub(:type => :boolean, :limit => nil)
      })
      @klass.any_instance.stubs(:has_attribute?).returns(true)
      @klass.send(:define_method, :attribute_for_inspect) do |name|
        self.send(name.to_sym).inspect
      end
      @klass.send(:attr_accessor, * column_names.map { |e| e.to_sym })
    end

    context "with populated instance" do
      setup do
        @person = @klass.new
        @person.first_name = 'Jack'
        @person.last_name = 'Chen'
        @person.bio = 'I work at Mocra'
        @person.age = 19
        @person.height = 169.4
        @person.date_of_birth = DateTime.new(1988,10,29)
        @person.human = true
        @person.date_of_birth.stubs(:inspect).returns("1988-10-29 00:00:00".inspect)
        
      end

      should "pretty print object" do
        expected = <<-EOS.gsub(/^        /, '')
        Person:
        	int(4)     id           : nil
        	str(255)   first_name   : "Jack"
        	str(255)   last_name    : "Chen"
        	text       bio          : "I work at Mocra"
        	int        age          : 19
        	decimal(8) height       : 169.4
        	datetime   date_of_birth: "1988-10-29 00:00:00"
        	boolean    human        : true
        EOS
        assert_equal(expected, @person.inspect)
      end
    end
  end
  
end
