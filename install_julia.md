# Notes for installing and running Julia notebooks

These notes should help you install necessary software on your laptop,
or to use subliminal.


# Prerequisites

This assumes you have already a copy of Python3 in your path.  Simply
run `python3` to check what version you have.


# Install julia

Julia can be installed from <https://julialang.org/downloads/>.  Mac
users might prefer to use the [homebrew](https://brew.sh) which makes
installation as simple as:

```
brew install julia
```

# Install jupyter


Jupyter is the engine underlying the notebook format.  It is a python
package that you can install for yourself using.

```
pip3 install --user jupyter
```

After it is installed, check that you can run it using
```
which jupyter
```
which should show that it installed in `~/.local/bin/`.  If it can't
be found, you may need to add the following to your 
`~/.bashrc` file (or .zshrc on macs).

```
export PATH="~/.local/bin:$PATH"
```

and then reload your init file using
```
source ~/.bashrc
```


# Install IJulia kernel

The [IJulia kernel](https://github.com/JuliaLang/IJulia.jl) is used by
Jupyter to communicate with Julia.  It can be installed from the shell
with:

```
julia -e 'using Pkg; Pkg.add("IJulia")'
```


# Download the workbooks

The workbooks can be downloaded into your home directory using:

```
cd ~
git clone https://github.com/Nick-Gale/2022_Scientific_Programming_CamCompBio/
cd 2022_Scientific_Programming_CamCompBio/Workbooks
```

# Start Jupyter notebook

Finally, we can start the notebook by doing:

```
jupyter notebook julia_basic.ipynb
```

# Subliminal

You can run Julia/jupyter remotely on subliminal and just use a web-browser
on your laptop to connect to the jupyter session.  This is analagous
to running rstudio through your web-browser, although not quiet as easy.

On subliminal, you should find that python3 is installed in
/usr/bin/python, and julia (version 1.5) is in /alt/bin/julia .

You will need to install jupyter and the jupyter kernel as above.

This solution requires you to have ssh and be able to do port
forwarding.
[Source](https://docs.anaconda.com/anaconda/user-guide/tasks/remote-jupyter-notebook/).


First, on subliminal, type the following:

```
jupyter notebook --no-browser
```

This runs the notebook, and will automatically allocate a port (it
will tell you e.g. the notebook is running at http://localhost:8888/
-- 8888 is the port number here on subliminal.



Then, on your laptop, type:
```
ssh -L 8080:localhost:8888 sje30@subliminal.maths.cam.ac.uk
```

where you replace sje30 with your crsid, and 8888 with your allocated
port.

After this, on your laptop you can visit the following page:

```
open http://localhost:8080/
```

At this stage, you should be running the Julia code on subliminal, and
simply viewing the results on your laptop.  WHen you have finished
with your session, as well as closing the browser tab, you should
quit the ssh command that you used to set up the port forwarding.
