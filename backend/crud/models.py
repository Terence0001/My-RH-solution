from django.db import models


class Users(models.Model):
    ID_User = models.IntegerField(primary_key=True, db_column="ID")
    First_Name = models.CharField(max_length=15, db_column="First_Name")
    Last_Name = models.CharField(max_length=15, db_column="Last_Name")
    Email = models.EmailField(max_length=20, db_column="Email")
    Personnal_Email = models.EmailField(max_length=20, db_column="Personnal_Email")
    Phone_Number = models.IntegerField(db_column="Phone_Number")
    Gender = models.CharField(max_length=15, db_column="Gender")


