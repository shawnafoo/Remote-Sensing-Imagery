##Import patch reef measure data sheet
##Can import by just importing the data directly through the files

##Merge files from every person

merged <- rbind(Module1_MeasuringReefs_SF, ASL_data, Module1_MeasuringReefs_AC,
                Module1_MeasuringReefs_NSH, Module1_MeasuringReefs_TJQ,
                Module1_MeasuringReefs_Template)

##need to remove field data for patch reef 12
#method = field
#reef_no = 12

merged <- merged[!(merged$reef_no == "12" & merged$method == "field"),]


#method = field
#area = NA

merged <- merged[!(merged$method == "field" & merged$area_m2 == "NA"),]

merged[rowSums(is.na(merged)) !=ncol(merged),]


m[rowSums(is.na(m)) != ncol(m), ]


library(xlsx)

groupdata <- write.xlsx(merged, "groupdata.xlsx")
groupdata <- write.csv(merged, "groupdata.csv")

