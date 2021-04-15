100.times do |n|
  title = "taskA-#{n+1}"
  due_time = Time.current.since(n.days)
  priority = (n % 3 + 1) * 10
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    status: 10,
    priority: priority
  )
end

100.times do |n|
  title = "taskB-#{n+1}"
  due_time = Time.current.since(n.days)
  priority = (n % 3 + 1) * 10
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    status: 20,
    priority: priority
  )
end

100.times do |n|
  title = "taskC-#{n+1}"
  due_time = Time.current.since(n.days)
  priority = (n % 3 + 1) * 10
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    status: 30,
    priority: priority
  )
end