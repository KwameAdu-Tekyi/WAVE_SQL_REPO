SELECT (agent_id), sum(amount)

FROM agent_transactions

WHERE when_created > now()-interval '1 week'

GROUP BY agent_id;
