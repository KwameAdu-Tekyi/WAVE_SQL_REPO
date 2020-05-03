SELECT source_wallet_id, send_amount_scalar, send_amount_currency, when_created

FROM transfers

WHERE send_amount_scalar > 10000000

AND send_amount_currency = 'CFA' AND when_created > now()-interval '1 MONTH';
