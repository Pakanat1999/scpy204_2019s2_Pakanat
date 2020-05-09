#!/bin/bash
read -p "Name :  " name
read -p "Gender : " gender
read -p "Age : " age

echo -e "RISK AREAS : \nChina Hongkong Taiwan Macau Japan Singapore \nSouth-Korea Germany France Italy Iran \nAmerica Switzerland Norway Denmark \nNetherlands Sweden England"
read -p "Do you have travel from RISK AREAS ? : (YES please input 1)(NO please input 0) >>> " Q1
read -p "Do you have contacted with people from RISK AREAS ? : (YES please input 1)(NO please input 0) >>> " Q2
read -p "Do you have a fever ? : (YES or MAY BE please input 1)(NO please input 0) >>> " Q3
echo "Do you have any of these symptoms ? (YES or MAY BE please input 1)(NO please input 0)"
read -p "Cough >>> " Q4
read -p "Sore throats >>> " Q5
read -p "Shortness of breath >>> " Q6
#echo -e "Q1 = $Q1 \nQ2 = $Q2 \nQ3 = $Q3 \nQ4 = $Q4 \nQ5 = $Q5 \nQ6 = $Q6 "
sum=$(($Q1+$Q2+$Q3+$Q4+$Q5+$Q6))
#echo "sum $sum"
if [ $sum -eq 0 ] ; then
	echo "Congratulation! $name You're safe."
elif [ $sum -le 3 ] ; then
	echo "Hmm, It's a risk. You must observe your symptoms."
elif [ $sum -le 6 ] ; then
	echo "Please go to see a doctor right away!! You're at risk of Covid-19."
elif [ $sum -gt 6 ] ; then
	echo "ERROR please checking again"
else 
	echo "ERROR please checking again"
fi
exit 0

