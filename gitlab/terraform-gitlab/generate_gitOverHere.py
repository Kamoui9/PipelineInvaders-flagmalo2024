import jinja2

NUM_USER = 25


with open("gitOverHere.tf.j2") as file_:
    template = jinja2.Template(file_.read())

output = template.render(NUM_USER=NUM_USER)

with open("gitOverHere.tf", "w") as f:
    f.write(output)

print("[ok] gitOverHere ok !")