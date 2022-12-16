######### 4.1.9 Practical activity: Creating and querying a data frame #########

# Miss Louw wants you to create a unique customer ID for each customer on the list, 
# along with adding it to the table and extracting the data from the table. 
# This will include:

# 1.all female customers
# 2.all customers over the age of 50
# 3.all customers with fewer than 20 purchases.

# Creating Customer Database.
# Create a vector for each column
name <- c("Donna", "Anthea", "Yusuf", "Bongile", "Abe",
          "Quentin", "Tracy", "Bilal", "Victoria", "Indira")

last_name <- c("Watusi", "Smits", "Zayeed", "Maleson",
              "Dawidowitz", "Ng", "Jacks", "Ghani", "LeGrande",
              "De Silva")

gender <- c("F", "F", "M", "F", "M", "N", "F", "M", "F", "F")

age <- c(38, 29, 44, 24, 66, 34, 55, 40, 38, 29)

email <- c("donnaw@gotmail.co.uk", "as@workmail.co.nz",
           "yusufzz@glammail.com", "bongi1@workmail.co.uk",
           "papabe@oldmail.com", "qng7@mailio.com",
           "tracy@blurredv.co.uk", "bghani2@mailio.com",
           "beachh@glammail.com", "indigirl@workmail.com")

purchase <- c(24, 16, 28, 33, 21, 30, 28, 21, 22, 32)

# Combine the vectors.
book_df <- data.frame(name, last_name, gender, age, email, purchase)

# Print data frame.
book_df
str(book_df)

###############################################################################

# 3. Check the data type of your data frame.

# Determine the typeof() of the data frame.
typeof(book_df)


# Determine the class() of the data frame.
class(book_df)


# Check the dimensions of the data frame.
dim(book_df)

###############################################################################

# 4. Change the column names to all caps.

# Specify the columns as names and the data frame.
names(book_df) <- c('NAME', 'LAST NAME', 'GENDER', 'AGE',
                    'EMAIL', 'PURCHASES')

# Print the data frame.
book_df

###############################################################################

# 5. Add a column to the data frame containing the customer IDs.

# Here an operator was used to create a sequence of numbers. 
ID <- c(2101:2110) 

# add the new column to the current data frame.
book_df$ID <- ID

# Print data frame.
book_df

# Return the structure of the data frame.
str(book_df)

###############################################################################

# 1. Extract all female customers.
subset(book_df, GENDER == 'F')

# 2. Extract all customers over the age of 50.
subset(book_df, AGE > 50)

# 3. Extract all customers with fewer than 20 purchases.
subset(book_df, PURCHASES < 20)

################################ End of Code ###################################

