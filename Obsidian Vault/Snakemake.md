The generation of the model is dictated by the open workflow management system called Snakemake. This makes sure that the correct dependencies between the rules and scripts that are the foundation of the PyPSA-EUR model are defined so that they may be executed in the right order.  
The Snakemake declares a **Rule** for every **Script** in the script’s directory. This rule contains information on the input and output files of the script. Snakemake also makes sure that the necessary parts of the workflow is regenerated when a file or a script has been modified. This is done by determining the dependencies between the rules by matching file names.  
  
Snakemake in itself is an extension to the Python language and such follows a similar. But not identical syntax. The Snakemake syntax always begins with a keyword followed by a code block, either inline, or indented if consisting of multiple lines of code.  
  
Snakemake has a language extension for use in VisualStudio. Following is a simple example of what can be seen inside a Snakefile:
![[Pasted image 20250110131723.png]]
\cite{BasicsExampleWorkflow}


[Snakefile](file:///C:/Users/krisa/Documents/GitHub/pypsa-eur/pypsa-eur-KHA/Snakefile)