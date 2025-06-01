_roll = player getVariable ["roll", "rifleman"];
switch (_roll) do {
    case "rifleman": {player setUnitLoadout "ASA_Schuetze_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
    case "pl": {player setUnitLoadout "ASA_Zugfuehrer_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "sl": {player setUnitLoadout "ASA_Gruppenfuehrer_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "crew": {player setUnitLoadout "ASA_Fahrzeugbesatzung_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "fl": {player setUnitLoadout "ASA_Truppfuehrer_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "at": {player setUnitLoadout "ASA_ATSchuetze_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "dm": {player setUnitLoadout "ASA_DMSchuetze_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "mg": {player setUnitLoadout "ASA_MGSchuetze_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "mg2": {player setUnitLoadout "ASA_MG2_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "sanB": {player setUnitLoadout "ASA_MG2_F"; [player setVariable ["ace_medical_medicClass", 1, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "iSL": {player setUnitLoadout "ASA_InstandsetzerGrpFhr_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 2, true];};
	case "ing": {player setUnitLoadout "ASA_Instandsetzer_F"; [player setVariable ["ace_medical_medicClass", 0, true]]; player setVariable ["ACE_isEngineer", 2, true];};
	case "notSanSL": {player setUnitLoadout "ASA_NotSanGrpFhr_F"; [player setVariable ["ace_medical_medicClass", 2, true]]; player setVariable ["ACE_isEngineer", 0, true];};
	case "notSan": {player setUnitLoadout "ASA_NotSan_F"; [player setVariable ["ace_medical_medicClass", 2, true]]; player setVariable ["ACE_isEngineer", 0, true];};
};