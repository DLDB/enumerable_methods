
class Array
  def my_ampersand(ary)
    # [1,2,3,4]&[1,3,4,5] => [1,3,4]
      self.select {|element|
        ary.include?(element)}.uniq
  end

  def my_asterisk(intorstr)
    #[1,2,3]*2 => [1,2,3,1,2,3]
    #[1,2,3]*z => "1z2z3"
    
    if intorstr.is_a?(Integer)
      newarr = []
      index = 0
      while index < intorstr do
        self.each { |ele| newarr << ele }
        index += 1
      end
      newarr
    elsif intorstr.is_a?(String)
      len = (intorstr.length + 1) * -1
      str = ""
      self.each {|ele| str << "#{ele}#{intorstr}"}
      str[0..len]
    else raise "WTF is that weird argument? Gimme a string or an integer plz"
    end
  end

  def my_plus(array)
    newarr = self.dup
    array.each {|ele| newarr << ele }
    newarr
  end

  def my_minus(array)
    newarr = self.dup
    newarr.reject {|ele| array.include?(ele) } 
  end
end
