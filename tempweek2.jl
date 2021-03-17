# temporary file until merged with week2.ipynb

using Dates
# convert date format in whole column
dateColumn = wikiEVDraw[:,1]
dateLength = length(dateColumn)
for i in 1:dateLength
  dateColumn[i] = Dates.DateTime(wikiEVDraw[i,1], "d u y")
end

# give time in days since day 0
 # Rata Die Days format - no.of days from 1st Jan 0001 CE/AD

# calculate day 0: last date in this table
day0 = Dates.datetime2rata(wikiEVDraw[dateLength, 1])

epidays = Array{Int64,1}(undef,dateLength)

for i in epidays
  epidays[i] = Dates.datetime2rata(dateColumn[i]) - day0
end

# write converted data to new file
wikievdraw[:, 1] = epidays

DelimitedFiles.writedlm("ConvertedEVDdates.csv", wikiEVDraw, ',')
