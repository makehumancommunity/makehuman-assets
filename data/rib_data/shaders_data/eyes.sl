//(c) MakeHuman team 2007 - www.makehuman.org

surface
eyes ( float Ka = 1, Kd = .5, Ks = .5, roughness = .1;
		 color specularcolor = 1;
		 string speculartexture = "";
		 string texturename = ""; 
		 string alphatexture = "";)
{
  color Ct;
  color Crf = 0;
  float alpha = 1;
  vector V = -normalize(I);	
  normal Nf = faceforward (normalize(N),I);
  color glancing_highlight = 1-(V.Nf);
  color reddish = (.3,0.0,0.0)* glancing_highlight; 
  
  if (alphatexture != "")
       alpha = float texture (alphatexture);
  if (speculartexture != "")
       Crf = color texture (speculartexture)+0.3;
  if (texturename != "")
       Ct = color texture (texturename);	   
  else Ct = 1;
  Oi = alpha;
  Ci = Oi * (reddish + Cs * Ct * (Ka*ambient() + Kd*diffuse(Nf) ) +
	      (0.5+glancing_highlight)*Crf*specularcolor * Ks*specular(Nf,V,roughness));

}

