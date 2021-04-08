10.times do |n|
  title = "task-#{n+1}"
  Task.create!(
    title: title,
    body: "puipui"
  )
end