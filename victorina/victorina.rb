questions_path = './questions.txt'
answers_path = './answers.txt'
puts "Мини викторина. Ответьте на вопросы"

unless File.exist?(questions_path) &&  File.exist?(answers_path)
  abort "Файл не найден"
end



  qfile = File.new(questions_path, 'r:UTF-8')
  q = qfile.readlines
  qfile.close
  afile = File.new(answers_path, 'r:UTF-8')
  a = afile.readlines
  afile.close
  current_index = 0
  correct_answers = 0

while current_index < q.size
  puts q[current_index]
  user_answer = STDIN.gets.chomp
  correct_answer = a[current_index].chomp
  if user_answer == correct_answer
    puts "Верно!"
    correct_answers += 1
    else
    puts "Неверно, правильный ответ: " + correct_answer
  end
  current_index += 1
end
puts ""
puts "Правильных ответов #{correct_answers} из #{q.size} вопросов"
