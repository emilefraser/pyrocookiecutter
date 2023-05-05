# PyroCookiecutter README

## Synopsis

Another cookie cutter template

## Usage

```bash
cookiecutter gh:audreyr/cookiecutter-pypackage
```

or 

```bash 
$ cookiecutter https://github.com/audreyr/cookiecutter-pypackage.git
$ cookiecutter git+ssh://git@github.com/audreyr/cookiecutter-pypackage.git
$ cookiecutter hg+ssh://hg@bitbucket.org/audreyr/cookiecutter-pypackage
```

or

```bash 
cookiecutter file://server/folder/project.git
cookiecutter /path/to/template.zip
```

## Repo Folder Structure

## Further Links

# STRUCTURE

C:/Repos/PyroCookiecutter/PyroTemplate
|-- .git
|   |-- hooks
|   |-- info
|   |-- logs
|   |   `-- refs
|   |       |-- heads
|   |       `-- remotes
|   |           `-- origin
|   |-- objects
|   |   |-- XX
|   |   |-- info
|   |   `-- pack
|   `-- refs
|       |-- heads
|       |-- remotes
|       |   `-- origin
|       `-- tags
|-- tests
`-- {{cookiecutter.project_slug}}
    |-- design
    |-- docs
    |-- tests
	|-- .filerepo
	|-- README.md
	|-- CHANGELOG.md
	|-- requirements.txt
    `-- {{cookiecutter.module_slug}}
	   |-- assets  
	   |-- tests 
	   |-- README.md