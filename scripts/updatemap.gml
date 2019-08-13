for(i=0;i<minimapw;i++)
    {
    for(j=0;j<minimaph;j++)
        {
        actualmap[i,j] = $000000
        }
    }
    
viewx = round(map[roommanager.roomnum,1]-(minimapw-map[roommanager.roomnum,3])/2)
viewy = round(map[roommanager.roomnum,2]-(minimaph-map[roommanager.roomnum,4])/2)
    
for(i=0;i<array_height_2d(map);i++)
    {
    jmax = min(minimapw-map[i,1]+viewx,map[i,3])
    for(j=max(viewx-map[i,1],0);j<jmax;j++)
        {
        kmax = min(minimaph-map[i,2]+viewy,map[i,4])
        for(k=max(viewy-map[i,2],0);k<kmax;k++)
            {
            c = map[i,0]
            col = c[j,k]
            actualmap[map[i,1]+j-viewx,map[i,2]+k-viewy] = col
            }
        }
    }
