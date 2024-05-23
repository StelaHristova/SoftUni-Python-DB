SELECT
	   min(deposit_charge) as minimum_deposit_charge
FROM wizard_deposits;

/*2
SELECT
	   deposit_charge as minimum_deposit_charge
FROM wizard_deposits
ORDER BY deposit_charge
LIMIT 1
*/