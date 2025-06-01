class logistics_point_menu
{
	idd = 25500;
	class controlsBackground
	{
		class Outline
		{    
			idc = -1;
			type = 0;
			style = 0;
			x = 0; 
			y = 0;
			w = 1;
			h = 1;
			font = "EtelkaNarrowMediumPro";
			sizeEx = 0.1;
			colorBackground[] = {0,0.15,0,1};
			colorText[] = {1,1,1,1};
			text = "";
		};  
	};
	class controls
	{
		class Title1
		{
			idc = -1;
			type = 0;
			style = 42;
			x = 0.01; 
			y = 0.01;
			w = 0.98;
			h = 0.1;
			font = "EtelkaMonospacePro";
			sizeEx = 0.1;
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			text = "Logistics Menu.";
		};
		class Description1
		{
			idc = -1;
			type = 0;
			style = 0;
			x = 0.01; 
			y = 0.12;
			w = 0.98;
			h = 0.05;
			font = "EtelkaMonospacePro";
			sizeEx = 0.03;
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			text = "Select a container of supplies to take out of the logistics depo.";
		};
		class Close
		{
			idc = -1;
			type = 1;
			style = 2;
			x = 0.91; 
			y = 0.956;
			w = 0.08;
			h = 0.022;
			font = "EtelkaMonospacePro";
			sizeEx = 0.03;
			colorBackground[] = {0,0,0,1};
			text = "Cancel";
			toolTip = "Close this menu.";
			action = "closeDialog 2";
			soundPush[] = {"",0.1,1};
			soundEnter[] = {"",0.1,1};
			soundClick[] = {"",0.1,1};
			soundEscape[] = {"",0.1,1};
			colorBackgroundActive[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			borderSize = 0;
		};
		class Accept
		{
			idc = 25501;
			type = 1;
			style = 2;
			x = 0.82; 
			y = 0.956;
			w = 0.08;
			h = 0.022;
			font = "EtelkaMonospacePro";
			sizeEx = 0.03;
			colorBackground[] = {0,0,0,1};
			text = "Accept";
			toolTip = "Deliver the selected supplies from storage.";
			action = "spawnBox = 1; closeDialog 0";
			soundPush[] = {"",0.1,1};
			soundEnter[] = {"",0.1,1};
			soundClick[] = {"",0.1,1};
			soundEscape[] = {"",0.1,1};
			colorBackgroundActive[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorFocused[] = {0,0,0,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			borderSize = 0;
		};
		class supplyBoxSelect
		{
			idc = 25502;
			type = 5;
			style = ST_LEFT + LB_TEXTURES;
			x = 0.01;
			y = 0.2;
			w = 0.79;
			h = 0.79;
			font = "PuristaLight";
			sizeEx = 0.03;
			rowHeight = 0.035;
			colorText[] = {1,1,1,1};
			colorScrollbar[] = {1,1,1,1};
			colorSelect[] = {0,0,0,1};
			colorSelect2[] = {1,0.5,0,1};
			colorSelectBackground[] = {0.6,0.6,0.6,1};
			colorSelectBackground2[] = {0.2,0.2,0.2,1};
			colorBackground[] = {0,0,0,1};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			maxHistoryDelay = 1.0;
			soundSelect[] = {"",0.1,1};
			period = 0;
			autoScrollSpeed = -1;
			autoScrollDelay = 5;
			autoScrollRewind = 0;
			arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
			arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
			shadow = 0;
			class ListScrollBar
			{
				color[] = {1,1,1,0.6};
				colorActive[] = {1,1,1,1};
				colorDisabled[] = {1,1,1,0.3};
				thumb = "#(argb,8,8,3)color(1,1,1,1)";
				arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
				arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
				border = "#(argb,8,8,3)color(1,1,1,1)";
				shadow = 0;
			};
			onLBSelChanged = "missionNamespace setVariable ['selectedSupplyBox', _this, true]; false";
		};
	};
};