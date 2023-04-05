files, = glob_wildcards('/home/stephano/Documents/02_gitHubProjects/00_testData/{file}')
print(files)
rule all:
    input:
        expand('{file}.md5',file=files)

rule md5sum:
    input:
        inputfile = '/home/stephano/Documents/02_gitHubProjects/00_testData/{file}'

    output:
        outputfile = '{file}.md5'

    shell: 'md5sum {input.inputfile}>{output.outputfile}'