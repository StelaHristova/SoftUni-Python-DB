from sqlalchemy.orm import sessionmaker
from models import Employee, engine

Session = sessionmaker(bind=engine)
with Session() as session:
    employee = Employee(
        first_name="Miroslav",
        last_name="Smith",
        age = 33
    )
    session.add(employee)
    session.commit()