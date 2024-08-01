import os
import django

# Set up Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "orm_skeleton.settings")
django.setup()

# Import your models here
from main_app.models import Author, Article, Review
# Create queries within functions


def get_authors(search_name=None, search_email=None):

    if search_name is None and search_email is None:
        return ""

    authors = []
    if search_name is not None and search_email is not None:
        authors = Author.objects.