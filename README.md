# Exercise 00 - First shell script

Purpose
This exercise is designed to learn how to interact with the HeadHunter API, use curl to download data, format it using  jq, and sace the result to a JSON file.


Used commands

curl - to download data from the API over the internet.
jq - to format  and read JSON data.
echo - to print message to the terminal.
chmod +x - to make the script executable.

How it works

1. When the script starts, it takes the vacancy name as an argument (for example: "python developer").
2. If no argument is provided, it uses "data scientist" as the default value.
3. The script uses curl to request the first 20 vacancies from the HeadHunter API.
4. The personse is formatted using jq and written to a file called hh.json.


How to run

./hh.sh "python develop"

or 

./hh.sh
------------------------------------------------------------------------

# Exercise 01 - Transforming JSON to CSV

Purpose

This exercise converts the JSON file obtained the HeadHunter API in the previous task ex00 into a more convenient CSV format for data analysis.

Used commands 

jq - used to parse JSON data and transform it into CSV format.
echo - used to print informational messages to the terminal
 > - redirects the output of command into a file.
["id", ...] — defines the header row for the CSV file.

.items[] — iterates through all vacancies in the JSON data.

[ .id, .created_at, .name, .has_test, .alternate_url ] — selects only these fields for each vacancy.

@csv — converts the output into CSV format.

How it works

1. The script checks if the JSON file hh.json exists in the ../ex00/ directory
2. It runs the jq command with a filter defined in the filter.jq file.
3. The filter extracts the following five fiekds for each vacancy:
    id
    created_at
    name
    has_test
    alternate_url
4. The filtered data is converted to CSV format and saved to hh.csv.
5. The CSV file includes a header row as the first line.

How to run

chmod +x json_to_csv.sh

.json_to_csv.sh
----------------------------------------------------------------------
