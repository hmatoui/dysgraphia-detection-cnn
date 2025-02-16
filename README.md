# Project Setup with Virtual Environment

This guide walks you through setting up a virtual environment for this project, installing dependencies, and running Jupyter notebooks inside the virtual environment.

## 1. Create a Virtual Environment

1. **Navigate to your project directory**:
   
   Open your terminal and navigate to your project directory where the Jupyter notebooks are located.
   
   ```bash
   cd /path/to/your/project
   ```

2. **Create the virtual environment**:
   
   Run the following command to create a virtual environment. You can name it `venv` or anything you like.
   
   ```bash
   python -m venv venv
   ```
   
   This will create a new directory named `venv` in your project directory. Inside, it will contain a fresh Python environment with its own `bin` (for Linux/macOS) or `Scripts` (for Windows) and `lib` directories.

## 2. Activate the Virtual Environment

- **Windows**:
  
  To activate the virtual environment on Windows, run:
  
  ```bash
  .\venv\Scripts\activate
  ```

- **macOS/Linux**:
  
  To activate the virtual environment on macOS or Linux, run:
  
  ```bash
  source venv/bin/activate
  ```
  
  Once activated, you should see `(venv)` at the beginning of your terminal prompt.

## 3. Install Dependencies

Now that the virtual environment is active, you can install the dependencies required for your project.

1. **Install pip and necessary libraries**:
   
   First, make sure `pip` is updated:
   
   ```bash
   python -m pip install --upgrade pip
   ```

2. **Create a `requirements.txt` file** (if you haven't already):
   
   Inside the project directory, create a `requirements.txt` file that lists the required dependencies. Example:
   
   ```plaintext
   scikit-learn
   tensorflow
   numpy
   pandas
   jupyter
   matplotlib
   ```

3. **Install all dependencies from `requirements.txt`**:
   
   With the virtual environment activated, run the following command to install the dependencies listed in `requirements.txt`:
   
   ```bash
   pip install -r requirements.txt
   ```

## 4. Install Jupyter in the Virtual Environment

1. **Install Jupyter**:
   
   If you haven't already, install Jupyter in the virtual environment:
   
   ```bash
   pip install jupyter
   ```

2. **Add the Virtual Environment to Jupyter**:
   
   To run your notebook from this virtual environment, add the environment to Jupyter's list of kernels:
   
   ```bash
   python -m ipykernel install --user --name=venv --display-name "Python (venv)"
   ```
   
   This will allow you to select your virtual environment as a kernel in Jupyter notebooks.

## 5. Run Jupyter Notebook

Now you can run the Jupyter notebook in the virtual environment:

1. **Start Jupyter Notebook**:
   
   With the virtual environment activated, run:
   
   ```bash
   jupyter notebook
   ```

2. **Select the Kernel**:
   
   When you open your notebook in the browser, go to the **Kernel** tab in Jupyter and select the environment you created (e.g., "Python (venv)") from the list of available kernels.

## 6. Deactivating the Virtual Environment

Once you are done, deactivate the virtual environment by running:

```bash
deactivate
```

This will return you to your system's default Python environment.

# 
