import os
import os.path as p

def PrintCallback(msg):
    print(msg)

def GetValidDirectories(path, callback):    
    callback(path)
    ignore_folders = ["build"]
    for folder in os.listdir(path):
        valid_dir = p.join(path, folder)
        if os.path.isdir(valid_dir) and folder[0] != "." and folder not in ignore_folders:
            GetValidDirectories(valid_dir, callback)

GetValidDirectories(p.abspath(p.dirname(__file__)), PrintCallback)
