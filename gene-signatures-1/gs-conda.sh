# Conda environment to run gene signature scripts

# Create the conda environment
conda create --name gs python=3.10 -y
conda activate gs
# Check I'm using the right pip
which pip3
pip3 install decoupler
conda install -c conda-forge plotnine -y
conda install -c conda-forge scanpy -y
# Some conflicts may arise when installing jupyter, let conda handle it and wait for them to be resolved!
conda install -c conda-forge jupyter
conda install -c conda-forge ipykernel
conda install -c conda-forge -c bioconda decoupler
conda install -c conda-forge omnipath 
# Create a kernel to use with Jupyter Notebooks in VSCode
# https://medium.com/@nrk25693/how-to-add-your-conda-environment-to-your-jupyter-notebook-in-just-4-steps-abeab8b8d084
python -m ipykernel install --user --name=gs