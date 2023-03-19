# PR Title verifier

### This action checks the Pull request title and confirms that the starting of the title contains a valid jira id like this `[TEST-123] your pr title goes here` and the code goes at the beginning of the pull request title inside the square brackets

HOW TO USE

`uses: Mustafakhn/pr-title-verifier-action@v1`

you also have to declare 
`
env:
  GH_TOKEN: ${{ github.token }}
`
at the beginning of the workflow file or just before using the pr-title-verifier-action


The correct format of the argument is 

Example argument: ABC-1234

The alphabet before the hyphen is like so \"ABC-\".

|  NOTE: all the alphabets must be in capital  |

The numbers after the hyphen are like so \"-1234\".

you can also clone the repository and see the help documents or use the title-verifier.sh directly as a bash script

-h or --help : for viewing the help document for the file

which are passed in like ./title-verifier.sh <your.argument>
