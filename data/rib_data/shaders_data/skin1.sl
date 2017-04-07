//(c) MakeHuman team 2007 - www.makehuman.org
surface skin1 (float Ka = .5;
	       float Kd = .5;
		   float roughness = .6;
		   string texturename = ""; )
{
    normal Nf = faceforward (normalize(N),I);
	vector Vf = -normalize(I);	
	color glancing_highlight = 1+max(0,(1-(Vf.Nf)/0.9))*0.2;//POSSIBILE PARAMETRO QU
    Oi = Os;	
	if (texturename != "")
		Ci = color texture (texturename);	
    Ci = Os * Ci * (Ka * ambient() + Kd * diffuse(Nf));
	Ci = Ci+min(specular(Nf,-normalize(I),roughness),0.05)*glancing_highlight;
}