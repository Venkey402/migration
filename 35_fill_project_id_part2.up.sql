UPDATE log SET project_id = (SELECT project_id FROM launch WHERE id = log.launch_id LIMIT 1) WHERE project_id = 0 OR log.project_id IS NULL;