#Assess the Financial Statement of an Organization being supplied with 2 vectors of data: Monthly Revenue
#and Monthly Expenses for the Financial Year. You can create your own sample data vector for this
#experiment) Calculate the following financial metrics:
#a. Profit for each month.
#b. Profit after tax for each month (Tax Rate is 30%).
#c. Profit margin for each month equals to profit after tax divided by revenue.
#d. Good Months – where the profit after tax was greater than the mean for the year.
#e. Bad Months – where the profit after tax was less than the mean for the year.
#f. The best month – where the profit after tax was max for the year.
#g. The worst month – where the profit after tax was min for the year.
#Note:
#a. All Results need to be presented as vectors
#b. Results for Dollar values need to be calculated with $0.01 precision, but need to be presented in
#Units of $1000 (i.e 1k) with no decimal points
#c. Results for the profit margin ratio need to be presented in units of % with no decimal point.
#d. It is okay for tax to be negative for any given month (deferred tax asset)
#e. Generate CSV file for the data.

#a
monthly_revenue=c(200000, 150000, 120000, 210000, 150000, 165000, 170000, 135000, 175000, 125000)
monthly_expenses=c(70000, 80000, 85000, 75000, 93000, 95000, 93000, 99000, 68000, 65000)
monthly_profit=monthly_revenue-monthly_expenses
monthly_profit

#b
tax_rate=0.30
profit_after_tax=monthly_profit*(1 - tax_rate)
profit_after_tax

#c
profit_margin=(profit_after_tax / monthly_revenue)*100
profit_margin

#d
mean_profit_after_tax=mean(profit_after_tax)
mean_profit_after_tax
good_months=profit_after_tax > mean_profit_after_tax
good_months

#e
bad_months=profit_after_tax < mean_profit_after_tax
bad_months

#f
best_month=which.max(profit_after_tax)
best_month

#g
worst_month=which.min(profit_after_tax)
worst_month
monthly_profit_k=round(monthly_profit / 1000)
profit_after_tax_k=round(profit_after_tax / 1000)
monthly_profit_k
profit_after_tax_k
profit_margin_percent=round(profit_margin)
profit_margin_percent
df=data.frame(
  "Revenue ($K)" = round(monthly_revenue / 1000),
  "Expenses ($K)" = round(monthly_expenses / 1000),
  "Profit ($K)" = monthly_profit_k,
  "Profit After Tax ($K)" = profit_after_tax_k,
  "Profit Margin (%)" = profit_margin_percent,
  "Good Month" = good_months,
  "Bad Month" = bad_months
)
df
write.csv(df, "financial_statement.csv", row.names = FALSE)