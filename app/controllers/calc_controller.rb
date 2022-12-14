class CalcController < ApplicationController
  def input
  end

  def output
     v = params[:v].scan(/\d+/).map(&:to_i)
     if v.length < 10
        @result = "Количество целых чисел в последовательности должно быть больше 9!"
     else
        res = CalcController.processor(v)
        @result1 = res[0]
        @result2 = res[1]
        @result3 = res[2]
     end
  end
  def self.processor(mas)
    arr = []
    boofer = []
    cur = mas[0]
    mas.each do |i|
      if i >= cur
        boofer.push(i)
        cur = i
      else
        arr.push(boofer)
        boofer = []
        boofer.push(i)
        cur = i
      end
    end
    arr.push(boofer)
    s1 = mas.join(' ')
    s2 = composit(arr)
    s3 = maxlenseq(arr)
    [s1,s2,s3]
  end
  def self.composit(a)
    s = ""
    a.each do |i|
      s += i.join(' ')
      s += ', ' if i != a[-1]
    end
    s
  end
  def self.maxlenseq(a)
    n = []
    a.each{|i| n = i if i.length > n.length}
    n.join(' ')
  end
end
