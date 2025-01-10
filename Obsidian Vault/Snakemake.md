\cite{IntroductionPyPSAEur}

The generation of the model is dictated by the open workflow management system called Snakemake. This makes sure that the correct dependencies between the rules and scripts that are the foundation of the PyPSA-EUR model are defined so that they may be executed in the right order.  
The Snakemake declares a **Rule** for every **Script** in the script’s directory. This rule contains information on the input and output files of the script. Snakemake also makes sure that the necessary parts of the workflow is regenerated when a file or a script has been modified. This is done by determining the dependencies between the rules by matching file names.  
  
Snakemake in itself is an extension to the Python language and such follows a similar. But not identical syntax. The Snakemake syntax always begins with a keyword followed by a code block, either inline, or indented if consisting of multiple lines of code.  
  
Snakemake has a language extension for use in VisualStudio. Following is a simple example of what can be seen inside a Snakefile:
![[Pasted image 20250110131723.png]]
\cite{BasicsExampleWorkflow}

Here the placement of the input and output files are defined before the shell command is linked to the input and output functions like when defining a function in Python. When calling the Snakefile with Snakemake the following syntax can be used:

![[Pasted image 20250110132238.png]]

Which then tries to generate the target files.

There are a few highlighted flags in the command interface to be used when running Snakemake as defined in the PyPSA-Eur documentation:

| Flag  | Explanation                                                                                                                                                        |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| -j    | Specifies the amount of jobs to run in parallel.                                                                                                                   |
| -c    | Specifies the number of cores to be used for the computation. Since the cluster will be used, if omitted this flag will use the maximum number of cores available. |
| -f    | Forces the execution of a target or rule regardless of the output created already.                                                                                 |
| -F    | Forces all targets or rules.                                                                                                                                       |
| -n    | Performs a dry-run that tests if the workflow is defined properly and estimating the needed computation without running the actual rules and scripts.              |
| -r    | Reruns a rule or script.                                                                                                                                           |
| --dag | Creates a visualization of the workflow.                                                                                                                           |
| -t    | Used to mark (Touch) files so that Snakemake perceives them as up to date. This will overwrite the actual date at which the file was last updated.                 |
|       |                                                                                                                                                                    |
\cite{CommandLineInterface}

A rule can also be generalized to accept other filenames:
![[Pasted image 20250110132531.png]]
The PyPSA-Eur Snakefile specifies the constrains for the wildcards:

![[Pasted image 20250110132701.png]]
Found here:
[Snakefile](file:///C:/Users/krisa/Documents/GitHub/pypsa-eur/pypsa-eur-KHA/Snakefile)


Sample values can be passed to a rule to generate multiple files by adding brackets to the call like so:  
![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA4YAAABeCAYAAAB/9grSAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAWJQAAFiUBSVIk8AAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAADl3SURBVHhe7Z0HnFXVufbfOWd6o5ehg6AgIqAiYu8aWzSWGKOxpWjizXfvd2/u9/vd+7slmuQm0XhvijW50ViJvQbBEhClinSkd4bOML2eOd/zvPvs4YQwMISZ8eA8OzkZZmbP3mv919o777PestKjWV3ipkMEREAEREAEREAEREAEREAERKDDEkjvsD1Xx0VABERABERABERABERABERABJyAhKEmggiIgAiIgAiIgAiIgAiIgAh0cAIShh18Aqj7IiACIiACIiACIiACIiACIiBhqDkgAiIgAiIgAiIgAiIgAiIgAh2cgIRhB58A6r4IiIAIiIAIiIAIiIAIiIAISBhqDoiACIiACIiACIiACIiACIhABycgYdjBJ4C6LwIiIAIiIAIiIAIiIAIiIAIShpoDIiACIiACIiACIiACIiACItDBCUgYdvAJoO6LgAiIgAiIgAiIgAiIgAiIgISh5oAIiIAIiIAIiIAIiIAIiIAIdHACEoYdfAKo+yIgAiIgAiIgAiIgAiIgAiIgYag5IAIiIAIiIAIiIAIiIAIiIAIdnICEYQefAOq+CIiACIiACIiACIiACIiACEgYag6IgAiIgAiIgAiIgAiIgAiIQAcnIGHYwSeAui8CIiACIiACIiACIiACIiACbS4M4/F4gjK+hv8UdxEQAREQAREQAREQAREQAREQgb8kkBZ+m2ZpaU3ftAulthOGCUEYiUTQqYgZ+oXu+VcdIiACIiACIiACIiACIiACIiACSQRCPxp0lP+nsdHoZGsvgdh2whB9jESjlpWTZxlZuZaenmERfiJShnoAREAEREAEREAEREAEREAERCCZAEVgrCGGT5011NdZTVW5f22vo9WFITsUgYcwO6/QsvML0LEGa4w1WG2s3uI1jQonba+R1X1EQAREQAREQAREQAREQASOKgL0DjLaks60wq49IQxrrapsLzRVPSIv29bB1qrC0EUhQkezc/ItKzfPGtCB2qpKi0HpNjZCIOIThzbUIQIiIAIiIAIiIAIiIAIiIAIikEQAuo9aKhpNx9d0y0QoaUZWjuXkd7LqylLXVmms2dJGArFVhSHVbRZEYWZOrtXWVFpVeanHxUbYeP43LWr4rw4REAEREAEREAEREAEREAEREIEDEGDEJf9DPUVtlZOPSExEY1ZXllkjPYdtdLSiMIxbDhqcmZ1ndbWVVl1R6nVm0qB6dYiACIiACIiACIiACIiACIiACLSAAMNJqaPgOayrqfJCNHkFnS03vzMcbyUIL613z2JrH60iDOkVjKLQTDbUbENdHRq8N6ie00ZuztaGoOuJgAiIgAiIgAiIgAiIgAiIQKoRSEOuYV1NtUUjUeQc9nKhyJDStjiOWBiGeYV0czZCvdZVVyJ8lJqwbZMj2wKGrikCIiACIiACIiACIiACIiACqUOAmipu9ShCw9DSTOQcshANi9L4loCteByxMGRDGS6akZVtMRSXaUB5VYnCVhwhXUoEREAEREAEREAEREAERKDDEqC2iqOCZ31tteccRrEFYENdbavvD98KwjCIGI2mZ1oMuYUxbE2hQwREQAREQAREQAREQAREQAREoHUIxBu5x2GDVyxlCl9bHEcuDFkyFemR0fR0i1fHsWdhrE2SIdui87qmCIiACIiACIiACIiACIiACKQygcBjGAjDCEQhPyxI09qJe0cuDJ1i2j4xyARDHSIgAiIgAiIgAiIgAiIgAiIgAq1DABoLLjhu+eDaC9+0+tFKwrDV26ULioAIiIAIiIAIiIAIiIAIiIAItBMBCcN2Aq3biIAIiIAIiIAIiIAIiIAIiECqEpAwTNWRUbtEQAREQAREQAREQAREQAREoJ0ISBi2E2jdRgREQAREQAREQAREQAREQARSlYCEYaqOjNolAiIgAiIgAiIgAiIgAiIgAu1EQMKwnUDrNiIgAiIgAiIgAiIgAiIgAiKQqgQkDFN1ZNQuERABERABERABERABERABEWgnAhKG7QRatxEBERABERABERABERABERCBVCUgYZiqI6N2iYAIiIAIiIAIiIAIiIAIiEA7EZAwbCfQuo0IiIAIiIAIiIAIiIAIiIAIpCoBCcNUHRm1SwREQAREQAREQAREQAREQATaiYCEYTuB1m1EQAREQAREQAREQAREQAREIFUJHDXCsDFuhv9aBJ+0tFTFiTbG48GnsdHSIhGL4JMKRyPawzYRHtuUlsoQUwFYireBc4xjyuNoGs+mdqP9R/p8hHO6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UheUWiYCIiACIiACIiACICBhqGkgAiIgAiIgAiIgAiIgAiIgAh2cgIRhB58A6r4IiIAIiIAIiIAIiIAIiIAISBhqDoiACIiACIiACIiACIiACIhABycgYdjBJ4C6LwIiIAIiIAIiIAIiIAIiIAIShpoDIiACIiACIiACIiACIiACItDBCUgYdvAJoO6LgAiIgAiIgAiIgAiIgAiIgISh5oAIiIAIiIAIiIAIiIAIiIAIdHACEoYdfAKo+yIgAiIgAiIgAiIgAiIgAiIgYag5IAIiIAIiIAIiIAIiIAIiIAIdnICEYQefAOq+CIiACIiACIiACIiACIiACEgYag6IgAiIgAiIgAiIgAiIgAiIQAcn0GrCMB6PByjT0jo4UnVfBERABERABERABERABERABFqXQJrrLGiuUHe17uWtlYRh3GINDdCEaRaJRFq5ibqcCIiACIiACIiACIiACIiACHRcAmnQWJFoujU2xvBphDOu9VkcuTBEo+gtjDXUWdjgWEO9i0QdIiACIiACIiACIiACIiACIiACfzsBai0636LRDGusb3BxmNYGyvDIhSEaxcY21NVaNCPToukZLhLbRMb+7Tz1lyIgAiIgAiIgAiIgAiIgAiJwVBKgAy4dOqsBOouRmm2gC488lJSeQbozq6sqrHP3IsvKiVltdYVSDY/KKadGi4AIiIAIiIAIiIAIiIAIpBKBeLwR3sJ0y84vtPK9u6y+rgZaq/XT91rBYwhsHkpab3XVlZaemW05eQVWA6HoLk6FlKbSvFJbREAEREAEREAEREAEREAEjhICcYSNpmdkWXZeoQtCfigU09Kird6DVhGGYT5hVUUpGt1o2bkF3tCaynI0HPIQ4jDQh8o7bPUR1AVFQAREQAREQAREQAREQAS+MATC3R4oCjMycyynoJP3rbJsjzUijDQSaX1RyOu3ijAMRyEWa3AxSE9hdl4niyAOtr6m2hpjrJ4Tc3XbtK3FF2bo1BEREAEREAEREAEREAEREAEROFIC3OEBn2jUxV866rdk5eRxgwqrhgOuvg7FPrlVRRtFZLaqMKRnkOKwurLMsiEO8wo6Wx1cnw31dQlx2CBheKTzRX8vAiIgAiIgAiIgAiIgAiLwBSQQbP3HfMK0CHIKc/NRbKbWKkv3WAx6KgjAbLsIzFYVhkFbWYwmZlUVJVZXU2GZ2bmWCRcoq5VG0tHJNuzMF3B2qEsiIAIiIAIiIAIiIAIiIAIdhACdbKzd0gDvYHnJTquvr7Z4I32GbX+0ujAMmxxHpVImRzKMtA7hpFS/LLOqPMO2H1TdQQREQAREQAREQAREQARE4GgjEPfoSuYWctcHCkRqqkBDtf3RZsIw8AwGoaXeKY+OxdE+grftyekOIiACIiACIiACIiACIiACItBaBBJRosHODozEDB1rrXWDg1+nzYRheFsXiKxK2j790V1EQAREQAREQAREQAREQAREQAQOk0CbC8PDbI9OFwEREAEREAEREAEREAEREAERaGcCEobtDFy3EwEREAEREAEREAEREAEREIFUIyBhmGojovaIgAiIgAiIgAiIgAiIgAiIQDsTkDBsZ+C6nQiIgAiIgAiIgAiIgAiIgAikGgEJw1QbEbVHBERABERABERABERABERABNqZgIRhOwPX7URABERABERABERABERABEQg1QhIGKbaiKg9IiACIiACIiACIiACIiACItDOBCQM2xm4bicCIiACIiACIiACIiACIiACqUbg/wOH20lqj+d70AAAAABJRU5ErkJggg==)

The multiples can then be sorted postprocess by the Snakefile:

![[Pasted image 20250110133128.png]]And then indexed:
![[Pasted image 20250110133145.png]]Here the visualization as created by the -–dag flag becomes useful:
![[Pasted image 20250110133155.png]]
For adding custom scripts like for plotting results the script can be added to the Snakefile:
![[Pasted image 20250110133220.png]]PyPSA-Eur uses this for adding and managing scenarios:

![[Pasted image 20250110133238.png]]
In the script the Snakefile inputs and outputs are available for calling like so:

![[Pasted image 20250110133304.png]]In total the resulting workflow from the basic tutorial is like so:

#### Code

```
# SPDX-FileCopyrightText: : 2017-2024 The PyPSA-Eur Authors

#

# SPDX-License-Identifier: MIT

  

from pathlib import Path

import yaml

from os.path import normpath, exists

from shutil import copyfile, move, rmtree

from snakemake.utils import min_version

  

min_version("8.11")

  

from scripts._helpers import path_provider, copy_default_files, get_scenarios, get_rdir

  
  

copy_default_files(workflow)

  
  

configfile: "config/config.default.yaml"

configfile: "config/config.yaml"

  
  

run = config["run"]

scenarios = get_scenarios(run)

RDIR = get_rdir(run)

  

shared_resources = run["shared_resources"]["policy"]

exclude_from_shared = run["shared_resources"]["exclude"]

logs = path_provider("logs/", RDIR, shared_resources, exclude_from_shared)

benchmarks = path_provider("benchmarks/", RDIR, shared_resources, exclude_from_shared)

resources = path_provider("resources/", RDIR, shared_resources, exclude_from_shared)

  

CDIR = "" if run["shared_cutouts"] else RDIR

RESULTS = "results/" + RDIR

  
  

localrules:

    purge,

  
  

wildcard_constraints:

    clusters="[0-9]+(m|c)?|all",

    ll=r"(v|c)([0-9\.]+|opt)",

    opts=r"[-+a-zA-Z0-9\.]*",

    sector_opts=r"[-+a-zA-Z0-9\.\s]*",

  
  

include: "rules/common.smk"

include: "rules/collect.smk"

include: "rules/retrieve.smk"

include: "rules/build_electricity.smk"

include: "rules/build_sector.smk"

include: "rules/solve_electricity.smk"

include: "rules/postprocess.smk"

include: "rules/validate.smk"

include: "rules/development.smk"

  
  

if config["foresight"] == "overnight":

  

    include: "rules/solve_overnight.smk"

  
  

if config["foresight"] == "myopic":

  

    include: "rules/solve_myopic.smk"

  
  

if config["foresight"] == "perfect":

  

    include: "rules/solve_perfect.smk"

  
  

rule all:

    input:

        expand(RESULTS + "graphs/costs.svg", run=config["run"]["name"]),

    default_target: True

  
  

rule create_scenarios:

    output:

        config["run"]["scenarios"]["file"],

    conda:

        "envs/retrieve.yaml"

    script:

        "config/create_scenarios.py"

  
  

rule purge:

    run:

        import builtins

  

        do_purge = builtins.input(

            "Do you really want to delete all generated resources, \nresults and docs (downloads are kept)? [y/N] "

        )

        if do_purge == "y":

            rmtree("resources/", ignore_errors=True)

            rmtree("results/", ignore_errors=True)

            rmtree("doc/_build", ignore_errors=True)

            print("Purging generated resources, results and docs. Downloads are kept.")

        else:

            raise Exception(f"Input {do_purge}. Aborting purge.")

  
  

rule dag:

    message:

        "Creating DAG of workflow."

    output:

        dot=resources("dag.dot"),

        pdf=resources("dag.pdf"),

        png=resources("dag.png"),

    conda:

        "envs/environment.yaml"

    shell:

        r"""

        snakemake --rulegraph all | sed -n "/digraph/,\$p" > {output.dot}

        dot -Tpdf -o {output.pdf} {output.dot}

        dot -Tpng -o {output.png} {output.dot}

        """

  
  

rule doc:

    message:

        "Build documentation."

    output:

        directory("doc/_build"),

    shell:

        "make -C doc html"

  
  

rule sync:

    params:

        cluster=f"{config['remote']['ssh']}:{config['remote']['path']}",

    shell:

        """

        rsync -uvarh --ignore-missing-args --files-from=.sync-send . {params.cluster}

        rsync -uvarh --no-g {params.cluster}/resources . || echo "No resources directory, skipping rsync"

        rsync -uvarh --no-g {params.cluster}/results . || echo "No results directory, skipping rsync"

        rsync -uvarh --no-g {params.cluster}/logs . || echo "No logs directory, skipping rsync"

        """

  
  

rule sync_dry:

    params:

        cluster=f"{config['remote']['ssh']}:{config['remote']['path']}",

    shell:

        """

        rsync -uvarh --ignore-missing-args --files-from=.sync-send . {params.cluster} -n

        rsync -uvarh --no-g {params.cluster}/resources . -n || echo "No resources directory, skipping rsync"

        rsync -uvarh --no-g {params.cluster}/results . -n || echo "No results directory, skipping rsync"

        rsync -uvarh --no-g {params.cluster}/logs . -n || echo "No logs directory, skipping rsync"

        """
```