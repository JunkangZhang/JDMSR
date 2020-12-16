import os

x3f_tool_path = 'D:/tools/x3f_tools-0.57-windows-x86_64' # path to X3F tools
x3f_path = 'E:/Raw/sigma-sd-quattro/photographyblog' # directory to downloaded x3f files
output_path = 'E:/x3f_dng' # directory to saved dng files

os.makedirs(output_path, exist_ok=True)

x3f_files = os.listdir(x3f_path)
for file in x3f_files:
    if file.strip().lower().endswith('.x3f'):
        cmd = '%s -unprocessed -o %s %s' % (os.path.join(x3f_tool_path, 'bin/x3f_extract'), output_path, os.path.join(x3f_path, file))
        cmd = cmd.replace('\\','/')
        os.system(cmd)
