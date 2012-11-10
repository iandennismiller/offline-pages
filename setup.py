from setuptools import setup, find_packages
import os, shutil

version = '0.1'

setup(name='offline-pages',
      version=version,
      description="offline pages",
      scripts=[
            "bin/offline-browse", 
            "bin/offline-create", 
            ],
      long_description="""offline pages""",
      classifiers=[], # Get strings from http://pypi.python.org/pypi?%3Aaction=list_classifiers
      keywords='',
      author='',
      author_email='',
      url='',
      #install_requires = [],
      packages = ["OfflinePages"],
      license='MIT',
      zip_safe=False,
      )
