import os


def create_folder():
    os.mkdir("C:\\Users\\krif0\\PycharmProjects\\DEMO_FOLDER")


def create_sub_folder(name):
    os.mkdir("C:\\Users\\krif0\\PycharmProjects\\DEMO_FOLDER\\" + name)


def concat_name(fn, ln, title):
    full_name = f"Welcome to this course {fn} {ln} - {title}"
    return full_name
