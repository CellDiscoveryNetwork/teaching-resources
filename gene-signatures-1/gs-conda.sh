# Conda environment to run gene signature scripts

# Create the conda environment
conda create --name gs python=3.10 -y
which pip3 # Check I'm using the right pip
pip3 install decoupler
conda install -c -y conda-forge plotnine
conda install -c -y conda-forge scanpy 

# Create a kernel to use with Jupyter Notebooks in VSCode
# https://medium.com/@nrk25693/how-to-add-your-conda-environment-to-your-jupyter-notebook-in-just-4-steps-abeab8b8d084
python -m ipykernel install --user --name=gs