# python-portable-environment-win
Portable environment of python for windows 

# What is this?

This repo contains a portable python evironment of python 3.9.10 that you can copy and paste anywhere, install packaged with pip and re-distribute.

#But virtualenv are not meant for production and to be exportable?

*YES* that is correct. You should not use this in production, but in case you need it, here you have a working version

#How to use it

1) Clone the repo
2) Run `setup-path.bat` to update the fixed paths in the env.
3) Get into the virtual env by executing `Scripts/activate.bat`
4) Use pip to install any python package and dependency you need
5) (Optional) As you installed new packages that could or could not have fixed paths, update `setup-path.bat` to also update those files

#Beware of local directories for isolation

Some packages may use cache directory in the user space to download / generate extra data. This will break the isolation and portability of the enviroments. You may need to edit that python code to a path inside the enviroment to keep the code portable.

#How this has been done.

Pretty easy. Using WinPython an env has been created and then, all the WinPython files for this version has been copied to the enviorment to keep it portability.

### With love from:

**[Ipsilon Developments Inc.](https://www.ipsilondev.com)** released under **MIT license**

Like our **[Facebook](http://www.facebook.com/ipsilondev)** / **[Instagram](https://www.instagram.com/ipsilondev/)** page to get news about our releases

Or Follow us on **[Twitter](https://twitter.com/ipsilondev)**

You can also contact us at **info [AT] ipsilondev.com**
