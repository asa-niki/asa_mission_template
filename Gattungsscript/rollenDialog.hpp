class klassendialog2
	{
		idd = 5100;
		movingenable = 0; 
		class ControlsBackground
		{
			class Background_1200: IGUIBack
			{
				colorBackground[] = 
				{
					0.2,
					0.2,
					0.2,
					1
				};
				idc = 1200;
				x = 0.407187 * safezoneW + safezoneX;
				y = 0.247 * safezoneH + safezoneY;
				w = 0.185625 * safezoneW;
				h = 0.44 * safezoneH;
				
			};
		};
		class Controls
		{
			class Auswahl: RscListbox
			{
				idc = 1500;
				x = 0.427812 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.144375 * safezoneW;
				h = 0.341 * safezoneH;
				onLBSelChanged = "missionNamespace setVariable ['selectedRole', _this, true]; false";
				colorText[] = 
				{
					1,
					1,
					1,
					1
				};
			};
			class Akzeptieren: RscButton
			{
				idc = 1600;
				text = "Akzeptieren"; //--- ToDo: Localize;
				x = 0.427812 * safezoneW + safezoneX;
				y = 0.632 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
				action = "getSelectedLoadout = 1; closeDialog 0"
			};
			class Abbrechen: RscButton
			{
				idc = 1601;
				text = "Abbrechen"; //--- ToDo: Localize;
				x = 0.530937 * safezoneW + safezoneX;
				y = 0.632 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
				action = "closeDialog 2"
			};
		};
	};