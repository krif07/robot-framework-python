# Install robot framework

```sh
pip install selenium
https://robotframework.org/#libraries

https://pypi.org/project/robotframework/
pip install robotframework

https://robotframework.org/SeleniumLibrary/#installation
pip install --upgrade robotframework-seleniumlibrary

```

# Setup intellibot for Pychar

```sh
https://github.com/lte2000/intellibot
```

# Run Test Case

```sh
cd .\Test_Case\ 
robot .\Test_uno.robot

# reports in different folder
robot -d report_folder_name .\Test_uno.robot
robot -d ..\report_folder_name_hhmm .\Test_uno.robot

# run with tag
robot -d ..\report_folder_name_hhmm -i tag .\Test_uno.robot
```

# Libraries

```sh
cd .\Test_Case\ 
library to Excel
pip install openpyxl
https://pypi.org/project/openpyxl/

```