import os
from setuptools import find_packages, setuptools, setup

def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
    name='lollypopint',
    packages=find_packages(include=['lollypopint']),
    version='0.1.0',
    description='An extension of the Lollypop Music Player that lets you search for and play music files from the command line',
    long_description=read('README.md'),
    long_description_content_type='text/markdown',
    author='Markil3',
    license='gpl-3.0',
    url='https://github.com/Markil3/LollypopInt'
)
