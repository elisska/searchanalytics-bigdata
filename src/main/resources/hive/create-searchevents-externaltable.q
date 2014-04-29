USE search;
CREATE EXTERNAL TABLE IF NOT EXISTS search_clicks (eventId String, customerId BIGINT, hostedMachineName STRING, pageUrl STRING, totalHits INT, queryString STRING, sessionId STRING, sortOrder STRING, pageNumber INT, hitsShown INT, clickedDocId STRING, filters ARRAY<STRUCT<code:STRING, value:STRING>>, createdTimeStampInMillis BIGINT) PARTITIONED BY (year STRING, month STRING, day STRING, hour STRING) ROW FORMAT SERDE 'org.jai.search.hive.serde.JsonSerde'
LOCATION 'hdfs:///searchevents/';