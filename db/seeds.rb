TaskStatus.create!(
  id: 10,
  name: 'waiting'
)
TaskStatus.create!(
  id: 20,
  name: 'doing'
)
TaskStatus.create!(
  id: 30,
  name: 'done'
)

100.times do |n|
  title = "taskA-#{n+1}"
  due_time = Time.current.since(n.days)
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    task_statuses_id: 10
  )
end

100.times do |n|
  title = "taskB-#{n+1}"
  due_time = Time.current.since(n.days)
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    task_statuses_id: 20
  )
end

100.times do |n|
  title = "taskC-#{n+1}"
  due_time = Time.current.since(n.days)
  Task.create!(
    title: title,
    body: "puipui",
    due_time: due_time,
    task_statuses_id: 30
  )
end