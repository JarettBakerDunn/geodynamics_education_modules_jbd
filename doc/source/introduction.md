# Introduction

Geodynamics relies heavily on computational modeling to advance our understanding of Earth systems, making computational skills essential in undergraduate and graduate curricula. While many research-active lecturers already incorporate some computation into their courses, widespread adoption faces real barriers such as not all instructors have the relevant expertise, redesigning courses takes significant effort, and installing complex software with many dependencies is often a challenge for students.

The aim of this initiative is to develop modular teaching resources for upper-division and graduate geodynamics courses, integrating computational methods and CIG tools within a Jupyter Notebook environment.

For more background on this initiative, see the [Preface](index.md).

## How to Use

The modules can be used independently or combined to build more advanced materials and tutorials for CIG software workshops, supporting both coursework and hands-on training. If you are new to computational modeling, begin with the first notebook Basics of Geodynamic Modeling based on [Zelst et al. (2022)](https://doi.org/10.5194/se-13-583-2022)

Due to their modular design, these resources could be used independently, but could also be easily combined to create new (or more advanced) teaching material and tutorials for CIG software workshops.

Each notebook covers the scientific background of a geodynamic process, its governing equations, and the computational skills needed to model it. Each notebook covers the scientific background of a geodynamic process, its governing equations, and the computational skills needed to model it. Where analytical solutions exist, notebooks include an analytical section for students to solve the governing equations using Python. All notebooks include a numerical modeling section where students apply CIG software to simulate the concept computationally.

The Table of Contents in the navigation bar shows the high-level summary for each notebook.

## Accessing Notebooks

This document links directly to limited resources on Binder to run the notebooks. To run ASPECT (and higher resolution runs), we recommend the following options:

### Docker

**Intel / amd64**

```{code-block} bash
$ docker pull geodynamics/geodynamics_education_modules:amd64
$ docker run -p 8000:8000 -it --rm geodynamics/geodynamics_education_modules:amd64
$ 
```

**Apple Silicon**
```{code-block} bash
$ docker pull geodynamics/geodynamics_education_modules:arm64
$ docker run -p 8000:8000 -it --rm geodynamics/geodynamics_education_modules:amd64
$ 
```

Once you have run the commands above, open a browser window to:


&nbsp; &nbsp; http://localhost:8000/

&nbsp; &nbsp; Username: dealii <br>
&nbsp; &nbsp; Password: a

Once you have logged in, navigate to geodynamics_education_modules/source/ to find all education resources. The education resources for this series is located in geodynamics/


Jetstream:

These resources can be configured to run on [ACCESS Jetstream.](https://support.access-ci.org/tags/jetstream). Please [inquire](https://geodynamics.org/support/ticket/new).

Hubzero:

For personal or use by small groups, these notebooks can be accessed via geodynamcis.org.

***COMING SOON*** ........

## Contributing

The Geodynamics Education Modules (GEMS) are a community project that lives by the participation of the geodynamics community. For more information on contributing, see our repository [Contributing.md](https://github.com/geodynamics/geodynamics_education_modules/blob/main/CONTRIBUTING.md).

