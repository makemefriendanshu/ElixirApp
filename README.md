# ElixirApp

**TODO:**

You have to write a function/method that will access a public Teamweek timeline, fetch and filter tasks:

You can fetch the tasks by sending a request to https://app.teamweek.com/timeline/v1/sharing/oBpjpMFghWHK9PLuNfEbhx2squlxjbN5/tasks

The accepted params are since and until.
Both are dates in YYYY-MM-DD format

The function must fetch tasks from *Feb 18th to 22nd*
The function must only select tasks that have name with *all letters being capital letters*. eg.: **HELLO** should be selected, *Hello* and *hello* shouldn't.

The function must *return a single string containing all the selected tasks' name values separated by whitespaces.*

You are allowed to use Ruby or **Elixir** for the task.

## Run

```elixir
git clone https://github.com/makemefriendanshu/ElixirApp.git
cd App
mix deps.get
iex -S mix
ElixirApp.get
```