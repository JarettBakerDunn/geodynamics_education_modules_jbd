# geodynamics education modules

To run: 

docker run -p 8000:8000 -it --rm jbakerdunn/gemtests

Then, navigate to 127.0.0.1:8000 on a browser.

Log in with:
username=dealii
password=a

A password seems to be needed for the user to be able to log into jupyterhub.
I might be able to change this later.

I also should be able to set this up so that it uses the jupyterlab frontend that binder does,
or at least so that it doesnt open up a new tab every time you open a new notebook.
