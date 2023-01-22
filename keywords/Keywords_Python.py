import os


def create_folder():
    try:
        os.mkdir("C:\\Users\\krif0\\PycharmProjects\\DEMO_FOLDER")
    except FileExistsError as e:
        print(f"folder already exist -> {e}")


def create_sub_folder(name):
    try:
        os.mkdir("C:\\Users\\krif0\\PycharmProjects\\DEMO_FOLDER\\" + name)
    except FileExistsError as e:
        print(f"sub folder already exist -> {e}")


def concat_name(fn, ln, title):
    full_name = f"Welcome to this course {fn} {ln} - {title}"
    return full_name
