create (p:project {id:"{id}}", description:"{description}"})

//create task
match (p:project {id:"{id}"})
create (p)-[:has_task]->(t:task {id:"{id}", title:"{title}}"})

//return tasks
match (t:task) return t
