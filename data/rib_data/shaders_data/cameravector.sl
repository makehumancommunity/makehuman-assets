//(c) MakeHuman team 2007 - www.makehuman.org
surface cameravector (){
	vector Vf = -normalize(I);	
	normal Nf = faceforward (normalize(N),I);
	color glancing_highlight = (Vf.Nf);	
Ci = glancing_highlight;
}