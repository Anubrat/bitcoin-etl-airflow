SELECT IF((SELECT sum(transaction_count) FROM bitcoin_blockchain_raw.blocks) =
(SELECT COUNT(*) FROM bitcoin_blockchain_raw.transactions_raw), 1,
CAST((SELECT 'Total number of transactions is not equal to sum of transaction_count in blocks table') AS INT64))
