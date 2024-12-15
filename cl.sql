--liquibase formatted sql

--changeset tomer.horev:20241215 labels:example-label context:example-context
--comment: example comment
CREATE TABLE mng.incremental_load (
	id uuid NULL,
	source_system text NULL,
	source_schema text NULL,
	source_table text NULL,
	target_schema text NULL,
	target_table text NULL,
	loading_type text NULL,
	columns_list text NULL,
	date_filter_column text NULL,
	date_filter_value text NULL,
	last_loading_time timestamptz NULL,
	initial_loading_time timestamptz NULL,
	is_active int4 NULL
);
--rollback DROP TABLE mng.incremental_load;