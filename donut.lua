--												donut.luau
--										 	made by foreverskk
--										 please ignore the shape
										R1,    R2,  K2  =  1, 2,  5
									A, B = 0, 0; screenW,screenH=100,40
									local K1 = screenW*K2*3/(8*(R1+R2))
								xS,yS=0.6,0.3;label=script.Parent;--#######
								game:GetService("StarterGui"):SetCoreGuiEnabled(
									Enum.CoreGuiType.All, false);label.Font=Enum.Font.Code
							label.TextSize=12; label.TextXAlignment=Enum.TextXAlignment.Left
						  label.TextYAlignment=Enum.TextYAlignment.Top;label.TextWrapped=false
						label.RichText=false;label.Text="";RunServ=game:GetService("RunService")
						RunServ.Heartbeat:Connect(function()local z,b={},{};for i=1,screenW*screenH do
						z[i],b[i]=0," "end;local cA,sA,cB,sB=math.cos(A),math.sin(A),math.cos(B),math.sin(B)
						for th=0, 6.28,0.07 do local ct,st = math.cos(th),math.sin(th);for ph=0,6.28,0.02 do
						local cp, sp = math.cos(ph),                 math.sin(ph);local cx,cy=R2+R1*ct,R1*st
						local x=cx*(cB*cp+sA*sB*sp)					          -cy*cA*sB;local y=cx*(sB*cp-sA*cB*sp)+cy*cA*cB
						local z3=K2+cA*cx*sp+cy*sA;						         local ooz=1/z3;local xp=math.floor(screenW/2+xS*K1*ooz*x)
						 local yp=math.floor(screenH						     /2-yS*K1*ooz*y);local idx=xp+screenW*(yp-1)
						 local L=cp*ct*sB-cA*ct*sp-sA*				      st+cB*(cA*st-ct*sA*sp)--##################
						 if xp>=1 and xp<=screenW and yp>=1 			and yp<=screenH and ooz>(z[idx]or 0) then
						  z[idx]=ooz;local lum=math.floor(L*8); local chars=".,-~:;=!*#$@"--#################
						  b[idx]=chars:sub(math.clamp(lum,1,#chars),math.clamp(lum,1,#chars)) end end end							
							local frame={};for y=1, screenH do local line={}; for x=1, screenW do--#####
							line[#line+1]=b[x+screenW*(y-1)]end; frame[#frame+1]=table.concat(line) end
								label.Text=table.concat(frame, "\n");A+=0.04;B+=0.02 end)--##########
--									in theory this should work fine and yes I know the shape
-- 										is really weird but i guess it does look like a donut
--											so yeah thanks for taking a second to look at
--												this mess, (inspired by donut.c)
