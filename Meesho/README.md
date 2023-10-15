## 2 questions asked in meesho for business analyst role.

### 1.We have table where customer id and tax amount and date has been logged we have to return the particular date for each customer where the tax amount crossing 2000.

Table:

![image](https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/assets/68472546/971014d7-34bd-4282-8582-24c4ef4d4df4)

Result should look like below :

![image](https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/assets/68472546/584cf839-4533-4927-9529-23e13651abad)

My logic :
1.Getting the table aligned by cust id and tax amount by ascending
2.Calculating the running sum for each customer for particular date.
3.pulling out the entry where tax amount crosses 2000.


Solution : https://github.com/DeepanRaju-exe/SQL_interview_QS_Solutions/blob/main/Meesho/Running_SUM.sql
======================================




