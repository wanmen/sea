json.array!(@lessons) do |lesson|
  json.extract! lesson, :title, :description, :number, :course_id
  json.url lesson_url(lesson, format: :json)
end
