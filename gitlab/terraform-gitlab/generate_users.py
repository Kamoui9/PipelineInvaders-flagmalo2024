import jinja2
from faker import Faker

fake = Faker()
NUM_USER = 25

passwords = [fake.password(length=18, special_chars=False, digits=True, upper_case=True, lower_case=True) for _ in range(NUM_USER)]

with open("users.tf.j2") as file_:
    template = jinja2.Template(file_.read())

output = template.render(passwords=passwords, NUM_USER=NUM_USER)

with open("users.tf", "w") as f:
    f.write(output)

print("[ok] users ok !")