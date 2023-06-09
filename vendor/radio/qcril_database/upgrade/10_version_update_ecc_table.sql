/*
  Copyright (c) 2021 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 10);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '235' AND NUMBER = '999';
INSERT INTO qcril_emergency_source_mcc_table VALUES('235','999','','');
DELETE FROM qcril_emergency_source_mcc_table where MCC = '530' AND NUMBER = '111';
INSERT INTO qcril_emergency_source_mcc_table VALUES('530','111','','');

DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '235' AND NUMBER = '999';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('235','999','','');

COMMIT TRANSACTION;
