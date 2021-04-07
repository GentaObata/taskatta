# データベース設計

## tasks

|Column   |Type      |Option     |
|---------|----------|-----------|
|id       |integer   |null: false|
|title    |string    |null: false|
|body     |text      |null: true |
|due_time |datetime  |null: false|
|priorities_id |integer   |null: false|
|statuses_id|integer |null: false|
|cereated_at|datetime |null: false|
|updated_at|datetime |null: false|

### Association
- belongs_to :user
- belongs_to :priorities
- belongs_to :statuses
- has_many :tasks_labels


## priorities

|Column   |Type      |Option     |
|---------|----------|-----------|
|id       |integer   |null: false|
|name     |string    |null: false|
|weight   |integer   |null: false|
|cereated_at|datetime |null: false|
|updated_at|datetime |null: false|

### Association
- has_many :tasks


## statuses

|Column   |Type      |Option     |
|---------|----------|-----------|
|id       |integer   |null: false|
|name     |string    |null: false|
|cereated_at|datetime |null: false|
|updated_at|datetime |null: false|

### Association
- has_many :tasks

## labels

|Column   |Type      |Option     |
|---------|----------|-----------|
|id       |integer   |null: false|
|name     |string    |null: false|
|cereated_at|datetime |null: false|
|updated_at|datetime |null: false|

### Association
- has_many :tasks_labels


## tasks_labels

|Column   |Type      |Option     |
|---------|----------|-----------|
|id       |integer   |null: false|
|task_id  |integer   |null: false|
|label_id |integer   |null: false|
|cereated_at|datetime |null: false|
|updated_at|datetime |null: false|

### Association
- belongs_to :task
- belongs_to :label

## users

|Column   |Type      |Option     |
|---------|----------|-----------|
|id       |integer   |null: false|
|name     |string    |null: false|
|email    |string    |null: false|
|password_digest |string    |null: false|
|is_admin |boolean   |null: false|
|cereated_at|datetime |null: false|
|updated_at|datetime |null: false|

### Association
- has_many :tasks