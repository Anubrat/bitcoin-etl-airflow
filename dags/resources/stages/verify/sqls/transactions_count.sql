SELECT IF((SELECT sum(transaction_count) FROM `{{destination_dataset_project_id}}.{{dataset_name}}.blocks`) =
(SELECT COUNT(*) FROM `{{destination_dataset_project_id}}.{{dataset_name}}.transactions`), 1,
CAST((SELECT 'Total number of transactions is not equal to sum of transaction_count in blocks table') AS INT64))
