//(c) MakeHuman team 2007 - www.makehuman.org

color screen (color F; color B) {
       color W = (1,1,1);
	   color R = W - (W - F)*(W - B);
	   return R;
} 

surface skin2 ( string diffuseMap = ""; 
				string reflMap = "";
				string alphaDetails = "";
				float sssScale = 1;
				string detailsMap = "";				
				string cameraVectorsMap = "";				
				string colorMap = "";				
				float oilVal = 0.5;
				float Ka = 1.3;
				float useScreen = 1;
				

) 
{    
	Oi = Os;	
	color rf = 0;	
	color epidermal_layer = 1;
	color subdermal_layer = 1;	
	color baseLayer = 1;	
	color dt = 1;
	float dtAlpha = 0;
	float normalVal = 1;	
	color colorLayer = 1;
	
		
	
	if (reflMap != "")		
		rf = color texture (reflMap)*(0.2,0.7,1);
		
	if (cameraVectorsMap != "")		
		normalVal = max(float texture (cameraVectorsMap, "blur",0.004,"filter","gaussian"),0.15);
	
	if (colorMap != "")	
		{
		colorLayer = float texture (colorMap);					}
	if (detailsMap != "")	
		{
		dt = color texture (detailsMap,"blur",0.001,"filter","gaussian");		
		}	
		
	if (alphaDetails != "")		
		dtAlpha = float texture (alphaDetails);
		
	if (diffuseMap != "")
		{		
		baseLayer = color texture (diffuseMap);		
		subdermal_layer = color texture (diffuseMap,"blur",sssScale,"filter","gaussian")*(.5,0.3,0.1);		
		subdermal_layer = mix(baseLayer*(.5,0.3,0.1),subdermal_layer,normalVal);		
		epidermal_layer = color texture (diffuseMap,"blur",sssScale/2,"filter","gaussian")*(1,.8,0.75);		
		epidermal_layer = mix(baseLayer*(1,.8,0.75),epidermal_layer,normalVal);	
		Oi = float texture (diffuseMap[3]);	
		}	

	
	Ci = screen(epidermal_layer,subdermal_layer);	
	Ci = Ka*Ci*colorLayer;	
	Ci += oilVal*rf;	
	Ci = Oi * mix(Ci,baseLayer,dtAlpha)-((0.3,1,1)*(1-normalVal)/5);	
	
	if (useScreen = 1){
		Ci = screen(Ci,Ci);
		}
}

