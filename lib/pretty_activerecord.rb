$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module PrettyActiveRecord
  VERSION = '1.0.0'
  
  def inspect
    longest = self.class.column_names.map { |e| e.length }.max
    attributes_as_nice_string = self.class.column_names.collect { |name|
            if has_attribute?(name)
              "\t#{short_column_type(name).ljust(10)} #{name.ljust(longest)}: #{attribute_for_inspect(name)}"
            end
          }.compact.join("\n")
          "#{self.class}:\n#{attributes_as_nice_string}\n"
  end
  
  def short_column_type(column)
    column = self.class.columns_hash[column]
    column_type = column.type.to_s.gsub(/^(int|str).*/) { |a| a[0..2] }
    limit = (column.limit and column.type != :boolean) ? "(#{column.limit})" : ""
    "#{column_type}#{limit}"
  end
  
end
