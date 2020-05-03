SELECT sum(send_amount_scalar) as send_volume, wallets.ledger_location, transfers.kind,

COUNT (distinct transfers.u_id) as unique_sender,

COUNT (transfers.transfer_id) as transaction_count

FROM transfers, wallets

WHERE  (transfers.when_created = DATE_TRUNC ('week', CURRENT_TIMESTAMP - interval '1 week'))

GROUP by kind, ledger_location, u_id,transfer_id ;
