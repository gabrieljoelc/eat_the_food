class Array
  def distinct
    source = self
    target = []
    dups = Set.new
    source.each do |source_elem|
      target.push(source_elem) unless dups.add?(source_elem).nil?
    end 
    target
  end
end

