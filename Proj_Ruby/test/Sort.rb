#! ruby -Ku
##
# 配列をソートする。
# @author oriz403
# @since 2015/07/03
##
class ArraySort
  # ソート対象の配列
  @sample = nil

  ##
  # 初期化。
  ##
  def initialize
    #@sample = (0..500).sort_by {rand}
    @sample = %w(1 23 33 21 56 102)
  end

  ##
  # ユーザーに操作を要求する。
  # @return void
  ##
  def operation
    loop {
      p '操作を実行してください[C/E,B/Q]: '
      case STDIN.gets.chomp
      when 'C', 'E'                           # 処理終了
        break
      when 'B'                                # バブルソート
        p bubble_sort(@sample)
      when 'Q'                                # クイックソート
        p quick_sort(@sample)
      else                                    # その他
        p '該当しない値が入力されました'
      end
    }
    p '処理を終了しました'
  end

  ##
  # バブルソートする。
  # @return array
  ##
  def bubble_sort(array = nil)
    (0..array.length-1).each do |i|
    ((array.length-1).downto(i)).each do |j|
        array[j-1], array[j] = array[j], array[j-1] if array[j] < array[j-1]
      end
    end
    array
  end

  ##
  # クイックソートする。
  # @return void
  ##
  def quick_sort(array = nil)
    return array if array.length <= 1
    pivot = array[0]
    left, right = [], []
    (1..array.length-1).each do |i|
      array[i] <= pivot ? left << array[i] : right << array[i]
    end
    quick_sort(left) + [pivot] + quick_sort(right)
  end
end

## execute
ArraySort.new.operation
