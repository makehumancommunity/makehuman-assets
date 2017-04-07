//(c) MakeHuman team 2007 - www.makehuman.org
surface onlytexture (string texturename = ""; ) 
{		
    Ci = 0;	
	if (texturename != "")
		Ci = color texture (texturename);
}

