# ���̗v���𖞂����N���X�ALearnBlock���쐬���Ă��������@
#
# 1.
# ���̎d�l�𖞂������\�b�h `ext_sum` ���쐬���Ă�������
# ������2�ƁA����2�� `+` �Ō���������̒l�������Ɏ��u���b�N��3�������Ɏ��܂�
# �������A�u���b�N��n���Ȃ��Ă����삵�܂�
# �u���b�N���󂯎�����ꍇ�A���\�b�h�̖߂�l�̓u���b�N�̖߂�l�Ɠ�����
# �u���b�N���󂯎��Ȃ������ꍇ�A���\�b�h�̖߂�l�̓u���b�N�ɓn���\�肾�����l�Ɠ�����
#
# 2.
# ���̎d�l�𖞂������\�b�h `search_unknown` ���쐬���Ă�������
# ������2�󂯎��܂��A1�ڂ̈����͕K�����l�̔z��ł�
# 1�ڂ̈����̒�����A2�ڂ̈�����������Ƃ��傤��5�̔{���ɂȂ鐔�l���������o���āA�V�����z����쐬���߂�l�Ƃ��Ă�������
# �������ALearnBlock�N���X�ɂ́A���̎d�l�Ƃ͑S���֌W�Ȃ����\�b�h `unknown_number` ���\�b�h����`����Ă���Ɖ��肵�܂�(���̃��\�b�h�͎�������K�v�͂���܂���j
# 2�ڂ̈�����������O�ɁA�K������ `unknown_number` �̖߂�l���A1�ڂ̈����̊e���l�ɉ����Ă���v�Z���Ă�������
# �܂��A `unknown_number` ���\�b�h�́A��x�����Ăяo�����Ƃ͂ł��܂���

class LearnBlock

  def ext_sum(a, b, &blk)
    c = blk.call(a, b)
    puts "ext_sum = #{c}"
  end

  def search_unknown(arr, addNum)
    resArr = Array.new

    unknown_number(arr).each_with_index { |n, i|
      if (n + addNum) % 5 == 0
        resArr << arr[i]
      end
    }
    return resArr
  end

  def unknown_number(arr)
    uNumberArr = arr.map{ |n|
      n + 15
    }
  end

end

lb = LearnBlock.new
lb.ext_sum(7, 8) do |n, m|
  n + m
end

puts "-----------"

num = [11, 17, 21, 28, 31, 32, 36, 38, 41, 46]
puts "INPUT = #{num}"
puts "unknown_number = [26, 32, 36, 43, 46, 47, 51, 53, 56, 61]"
result = lb.search_unknown(num, 4)

puts "\nsearch_unknown = #{result}"
