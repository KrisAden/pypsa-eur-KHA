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


[Snakefile](file:///C:/Users/krisa/Documents/GitHub/pypsa-eur/pypsa-eur-KHA/Snakefile)