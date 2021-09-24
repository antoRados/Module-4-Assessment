# program opens the "um-server-01.txt" file, and assigns it to "log_file" for access
log_file = open("um-server-01.txt")

# creates a function "sales_reports" that acceps an argument of "log_file"
def sales_reports(log_file):
# for loop to iterate through the file contents
    for line in log_file:
# removes any whitespace at the end of the string, then assigns to the "line" variable
        line = line.rstrip()
# assigns a formatted "line" variable to "day"
        day = line[0:3]
# if statement to verify day matches what user is asking for, then assigns to the "day" variable
        if day == "Mon":
# prints "line" variable
            print(line)
# calls the sales_reports function using the "log_file" as input
sales_reports(log_file)
