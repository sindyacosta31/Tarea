class Hash
  def ninvert
    inject({}) { |h,(k,v)| (h[v] ||= []) << k; h }
  end
end

class Array
  def get_mode
    (inject(Hash.new(0)) { |h,e| h[e] += 1; h }.ninvert.max ||
[[]]).last
  end
end

p [3, 1, 1, 55, 55,2,3,2].get_mode
p [1,2,3,4].get_mode
