//(c) MakeHuman team 2007 - www.makehuman.org
surface cornea ( float Ka = 1, Kd = .5, Ks = .5, roughness = .1;
                 color specularcolor = 1;						 
                ) {		
	normal Nf = faceforward (normalize(N),I);    
	Ci = specularcolor *5* Ks*(specular(Nf,-normalize(I),roughness));	
    Oi = specularcolor *5* Ks*(specular(Nf,-normalize(I),roughness));
	Ci *= Oi;
	
}