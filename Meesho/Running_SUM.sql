SELECT * FROM

(SELECT cust_id,txn_date,
        SUM(txn_amt) over(partition by cust_id ORDER BY txn_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS pr 
        FROM customer_txn
)X

WHERE pr >2000
GROUP BY cust_id ;


