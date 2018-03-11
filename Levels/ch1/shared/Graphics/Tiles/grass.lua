local grass={
img="Levels/ch1/shared/Graphics/Tiles/grass.png",
color={r=0,g=255,b=0,a=255},
coords={
left={0,0,32,32},
middle={32,0,32,32},
right={64,0,32,32},
top={0,32,32,32},
single={32,32,32,32},
dirt={64,32,32,32}
},
handle=function(self,c_tl,t_tl,b_tl,l_tl,r_tl)
	if t_tl.r==c_tl.r and t_tl.g==c_tl.g and t_tl.b==c_tl.b then
		return self.coords.dirt[3],self.coords.dirt[4],self.coords.dirt,false,true
	elseif (l_tl.r==c_tl.r and l_tl.g==c_tl.g and l_tl.b==c_tl.b) and (r_tl.r==c_tl.r and r_tl.g==c_tl.g and r_tl.b==c_tl.b) then
			return self.coords.middle[3],self.coords.middle[4],self.coords.middle,true,true
	elseif (l_tl.r==c_tl.r and l_tl.g==c_tl.g and l_tl.b==c_tl.b) then
			return self.coords.right[3],self.coords.right[4],self.coords.right,false,true
	elseif (r_tl.r==c_tl.r and r_tl.g==c_tl.g and r_tl.b==c_tl.b) then
		return self.coords.left[3],self.coords.right[4],self.coords.left,false,true
	else
		return self.coords.single[3],self.coords.single[4],self.coords.single,false,true
	end
end
	
}

return grass