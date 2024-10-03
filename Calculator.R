#create a calculator which will perform +,-,*,/,%%,%%% (integer division)
{
a <- as.numeric(readline("Enter the first number (a): "))
b <- as.numeric(readline("Enter the second number (b): "))
operation <- readline("Enter the operation (+, -, *, /, %, %%%): ")
}
calculator <- function(a, b, operation) {
  switch(operation,
         "+" = a + b,
         "-" = a - b,
         "*" = a * b,
         "/" = a / b,
         "%%" = a %% b,
         "%%%" = a %/% b,
         stop("Invalid operation"))
}
result <- calculator(a, b, operation)
cat("Result:", result, "\n")

?switch

#an unnamed case can be used if there is no matched case