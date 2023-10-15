# Two questions asked in meesho for business analyst role.

## 1.We have table where customer id and tax amount and date has been logged we have to return the particular date for each customer where the tax amount crossing 2000.

Sample Table:

![image](https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/assets/68472546/971014d7-34bd-4282-8582-24c4ef4d4df4)

Result  :

![image](https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/assets/68472546/584cf839-4533-4927-9529-23e13651abad)

My logic :
1.Getting the table aligned by cust id and tax amount by ascending
2.Calculating the running sum for each customer for particular date.
3.pulling out the entry where tax amount crosses 2000.


Solution : [link](https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/blob/main/Meesho/Running_SUM.sql)
======================================

## 2.We have seat numbers and its occupancy 0-> not occupied and 1 -> occupied . We have to find the consecutive 4 seats in each ROW.

Sample Table:

![image](https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/assets/68472546/6d959f77-6f01-46d6-9920-195ceafdfa29)

Result :

![image](https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/assets/68472546/c1a4315b-7a9e-46c5-a958-1ad0cfb6b146)

My Logic :

1.Creating CTE as below :
Seperating the seat and row for each seat_number
labling Row number for each seat_number where occupancy is zero ie) un occupied
2.Pulling out the minumum and max seat number for each row by self joinig on condition that row number dofference and seat number difference should be 3.
3.Concating the seat numbers by using those min and max seat.

Solution: [Link](https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/blob/main/Meesho/Consecutive_seats.sql)
=====================================






