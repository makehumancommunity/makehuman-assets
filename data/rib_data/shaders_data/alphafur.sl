//(c) MakeHuman team 2007 - www.makehuman.org
surface alphafur (float Ka = 1, Kd = .5, Ks = .5, roughness = .2;
					color specularcolor = 1;
					string texturename = ""; ) 
{		
    Ci = Cs;
	normal Nf = faceforward (normalize(N),I);	
	if (texturename != "")
		Ci *= color texture (texturename);	    
		Oi = float texture (texturename[3]);
	Ci = Oi * (Ci * (Ka*ambient() + Kd*diffuse(Nf)));

}

