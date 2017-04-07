N = 1041

def binary(num)
  str = ""
  while num > 0
    if num % 2 == 1
      str = str << "1"
      num = (num-1) / 2
    else
      str = str << "0"
      num = num / 2
    end
  end
  str
end

def count_gap(string)
  most = 0
  count = 0
  string.each_char do |c|
    if c == "0"
      count +=1
    elsif c == "1"
      if count > most
        most = count
      end
      count = 0
    end
  end
  most
end

def solution(n)
  p count_gap(binary(n))
end

solution(N)

    #count the 0s in each gap when you get to 1 stop
    #compare count to most if greater than most = count
    #if I wanted to do regex then: /(0+)1/.match(binary) = []