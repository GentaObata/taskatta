100.times do |n|
  title = "taskA-#{n+1}"
  due_time = Time.current.since(n.days)
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    status: 10
  )
end

100.times do |n|
  title = "taskB-#{n+1}"
  due_time = Time.current.since(n.days)
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    status: 20
  )
end

100.times do |n|
  title = "taskC-#{n+1}"
  due_time = Time.current.since(n.days)
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    status: 30
  )
end