# Configuration file for the Sphinx documentation builder.

import os
import sys
sys.path.insert(0, os.path.abspath('.'))


# -- Project information -----------------------------------------------------
project = 'GEM Notebooks'
author = 'CIG Education Team'
release = '0.1'

# -- General configuration ---------------------------------------------------
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',
    'sphinx.ext.viewcode',
    'sphinx.ext.githubpages',
    'myst_nb',
]

templates_path = ['_templates']

exclude_patterns = ['_build', 'build' '**.ipynb_checkpoints', 'Thumbs.db', '.DS_Store']


# -- Options for HTML output -------------------------------------------------
html_theme = 'sphinx_book_theme'
html_title = 'CIG Education GEM Notebooks'
html_logo  = '../../assets/education-gem-notebooks_icon.png'

html_theme_options = {
   "collapse_navigation": True,
    "navigation_depth": 3,
    "show_toc_level": 3,
      "logo": {
        "text": "GEM Notebooks",
    },
    "home_page_in_toc": True,
    "primary_sidebar_end": "navbar_end.html",
    "repository_url": "https://github.com/geodynamics/geodynamics_education_modules",
    "repository_branch": "main",
    "path_to_docs":"doc/source/",
    "use_repository_button": True,
    "use_edit_page_button": True,
    "use_issues_button": True,
    }

#html_static_path = ['_static']
