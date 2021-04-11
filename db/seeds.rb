10.times do |n|
  title = "task-#{n+1}"
  due_time = Time.current.ago(n.days)
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time 
  )
end