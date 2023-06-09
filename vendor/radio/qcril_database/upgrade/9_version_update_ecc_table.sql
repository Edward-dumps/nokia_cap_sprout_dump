/*
  Copyright (c) 2021 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 9);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '450' AND NUMBER = '112';
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','112','','');
DELETE FROM qcril_emergency_source_mcc_table where MCC = '450' AND NUMBER = '119';
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','119','','');

COMMIT TRANSACTION;
