//(c) MakeHuman team 2007 - www.makehuman.org
surface onlyrefl ( float Ks = 1, roughness = .1;
                         color specularcolor = 1;
                         string texturename = "";
						string environ = "";					 
						) {
    Ci = 0;
	float reflVal = 1;
	color Crefl = 0;
	normal Nf = faceforward (normalize(N),I);
	vector Vf = -normalize(I);	
	float is_under_light = comp(diffuse(Nf),1);	
	color glancing_highlight = max(0,((1-(Vf.Nf)/0.9)*is_under_light))*.2;//POSSIBILE PARAMETRO QU
	
    if (texturename != "")
		reflVal = float texture (texturename);
	float f = 1+(float noise((150)*P));	
	vector R = normalize (reflect(I,N));
 
	if (environ != "")
		Crefl = color environment (environ,R);    
	Ci = specularcolor * Ks*f*reflVal*(specular(Nf,-normalize(I),roughness)+glancing_highlight)+ 0.2*Crefl;	
}