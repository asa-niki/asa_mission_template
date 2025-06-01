_roll = player getVariable ["roll", "rifleman"];
switch (_roll) do {
    case "rifleman": {player setUnitLoadout "ASA_Schuetze_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
    case "pl": {player setUnitLoadout "ASA_Zugfuehrer_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "sl": {player setUnitLoadout "ASA_Gruppenfuehrer_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "crew": {player setUnitLoadout "ASA_Tahrzeugbesatzung_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "fl": {player setUnitLoadout "ASA_Truppfuehrer_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "at": {player setUnitLoadout "ASA_ATSchuetze_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "dm": {player setUnitLoadout "ASA_DMSchuetze_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "mg": {player setUnitLoadout "ASA_MGSchuetze_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "mg2": {player setUnitLoadout "ASA_MG2_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "sanB": {player setUnitLoadout "ASA_MG2_T"; [player setVariable ["ace_medical_medicClass", 1, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "iSL": {player setUnitLoadout "ASA_InstandsetzerGrpFhr_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 2, true];};
	case "ing": {player setUnitLoadout "ASA_Instandsetzer_T"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 2, true];};
	case "notSanSL": {player setUnitLoadout "ASA_NotSanGrpFhr_T"; [player setVariable ["ace_medical_medicClass", 2, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "notSan": {player setUnitLoadout "ASA_NotSan_T"; [player setVariable ["ace_medical_medicClass", 2, true]]; player setVariable ["ACE_isEngineer", 0, true];};
};