'''
thisdict = {}
thisdict.update([])
print(thisdict)

empl = []
'''

empl = []

def add_emp(name, surname):
    name = input("give me the name of the employee: ")
    surname = input("give me the surname: ")
    department = input("give the department: ")
    id = int(input("give the id:  "))
    employees = {
        "name": name ,
        "surname": surname ,
        "department": department,
        "id": id }
    empl.append(employees)

def remove_emp():
    remempl = int(input("remove employee ID: "))
    for idx , employee in enumerate(empl):
        print(idx)
        if remempl == employee["id"]:
            empl.pop(idx)

def show_emp():
    show_empl = int(input("show ID of employee: "))
    for employee in empl:
        pass
        if show_empl == employee:
            print(f"{employee}")



while True:
    print("press a number from 1-for add an employee 2-for view the employees 3-remove an employee  4-exit")
    opt = int(input("press a number for choise"))
    if opt == 1:
        add_emp("name", "surname")
    elif opt == 2:
        remove_emp()
    elif opt == 3:
        show_emp()
    else:
        exit()    