SELECT sum(send_amount_scalar) as send_volume, wallets.ledger_location, transfers.kind

FROM transfers, wallets

WHERE (transfers.when_created = DATE_TRUNC ('week', CURRENT_TIMESTAMP - interval '1 week'))

GROUP BY kind, ledger_location
