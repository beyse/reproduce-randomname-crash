# reproduce-randomname-crash

## How To Reproduce

I used Windows 11. I have not tried it with other operating systems.

### Step 1
Create conda environment using
```
conda create -n "randomnamecrash" python=3.8.5
```

Alternatively you can create the environment from the `environment.yml` I provided using
```
conda env create -f environment.yml
```
If you do so, you can skip Step 3.

### Step 2

Activate the environment using 

```
conda activate randomnamecrash
```

### Step 3
You should be able to skip this step if you created the environment with the `environment.yml` in Step 1. If not, do:


Install PyInstaller using 
```
conda install -c conda-forge pyinstaller
```

### Step 4
Install `randomnames` using 

```
pip install randomname
```

Alternatively you can install it from the `requirements.txt` I provided using

```
pip install -r requirements.txt
```

### Step 5

From within the conda prompt and with the environment `randomnamecrash` activated run the batch file 

```
pack.bat
```

Wait a minute or so until PyInstaller did its thing.

Change into the `dist` folder (This folder is created by PyInstaller)

```
cd dist
```
Now run the executable in this folder using

```
.\RandomNameGenerator.exe
```

Observe the crash:
```
Traceback (most recent call last):
  File "main.py", line 9, in <module>
  File "main.py", line 5, in main
  File "randomname\core.py", line 13, in get_name
  File "randomname\core.py", line 7, in generate
  File "randomname\core.py", line 8, in <genexpr>
  File "randomname\util.py", line 208, in choose
  File "random.py", line 290, in choice
IndexError: Cannot choose from an empty sequence
[22532] Failed to execute script 'main' due to unhandled exception!
```
