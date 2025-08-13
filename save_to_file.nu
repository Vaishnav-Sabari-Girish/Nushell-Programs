# In bash we use > to write to file and >> to append to file 
# In nushell we cannot use that 

ls | to json | save out_json.txt
ls | to csv | save out_csv.txt
