#Develop R program to create a Data Frame with following details and do the following operations.
#itemCode itemCategory itemPrice
#1001 Electronics 700
#1002 Desktop Supplies 300
#1003 Office Supplies 350
#1004 USB 400
#1005 CD Drive 800
#a) Subset the Data frame and display the details of only those items whose price is greater than or equal to 350.
#b) Subset the Data frame and display only the items where the category is either “Office Supplies” or “Desktop Supplies”
#c) Create another Data Frame called “item-details” with three different fields itemCode, ItemQtyonHand and ItemReorderLvl and merge the two frames.

itemcode=c(1001,1002,1003,1004,1005)
itemcategory=c("Electronics","Desktop Supplies","Office Supplies","USB","CD Drive")
itemprice=c(700,300,350,400,800)
itemdetails=data.frame(itemcode,itemcategory,itemprice)
itemdetails

#a
subset_price=subset(itemdetails,itemprice>=350)
subset_price

#b
subset_category=subset(itemdetails,itemcategory=="Office Supplies"|itemcategory=="Desktop Supplies")
subset_category

#c
itemcode=c(1001,1002,1003,1004,1005)
itemQtyonHand=c(1,2,3,4,5)
itemReorderLvl=c(10,20,30,40,50)
itemdetails1=data.frame(itemcode,itemQtyonHand,itemReorderLvl)
itemdetails1
merge(itemdetails,itemdetails1,by="itemcode")
