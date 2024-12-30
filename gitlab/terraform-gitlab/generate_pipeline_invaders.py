import jinja2

NUM_USER = 25

with open("pipelineInvaders.tf.j2") as file_:
    template = jinja2.Template(file_.read())

for i in range(1, NUM_USER + 1):
    output = template.render(equipe=i)
    filename = f"pipelineInvaders-equipe{i}.tf"
    with open(filename, "w") as f:
        f.write(output)

print("[ok] pipelineInvaders ok !")