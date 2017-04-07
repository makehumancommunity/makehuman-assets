//(c) MakeHuman team 2007 - www.makehuman.org

displacement skinbump(float Km = 0.1;
						float Km2 = 0.1;
                      float truedisp = 0;
					  string bumptexture = "")
{
float	hump1 = 0;
float	hump2 = 0;
normal	n = normalize(N);  
if(bumptexture != "")
{
    hump1 = float texture(bumptexture[1], s, t);
	hump2 = float texture(bumptexture[0], s, t);
}
if (truedisp == 1)
{
	if hump2 > 0.01{
		P = P + n * hump2 * Km2;
		N=calculatenormal(P);
	}
	else
	{
		N = calculatenormal(P + (n * hump1 * Km));
	}
}
else
{
	N = calculatenormal(P + (n * hump1 * Km));
} 
}


