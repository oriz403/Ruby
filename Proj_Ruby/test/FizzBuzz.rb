#! ruby -Ku
##
# FizzBuzzプログラム。
# @author r_orihara
# @since 2015/07/05
##
class FizzBuzz
  ##
  # 実行メソッド。
  # (1)整数が3か5の倍数であるかを評価し、trueであれば文字列、falseであればその整数をそのまま表示する
  # (2)15の倍数はFizzBuzz[0, 8]、3の倍数はFizzBuzz[0, 4]、
  #   5の倍数はFizzBuzz[4, 4]で正しい文字列が表示できるため、
  #   3で割り切れるとき開始文字が0番目、5でしか割り切れないときは4番目
  #   15で割り切れるとき文字数が8文字、割り切れないときは4文字とすればそれぞれ正しく評価できる
  # @return void
  ##
  def exec
    (1..100).each do |i|
       puts((i % 3).zero? || (i % 5).zero? ? 'FizzBuzz'[(i % 3).zero? ? 0 : 4, (i % 15).zero? ? 8 : 4] : i)
    end
  end
end

## execute
FizzBuzz.new.exec