// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:0,trmd:0,grmd:1,uamb:False,mssp:True,bkdf:True,hqlp:True,rprd:True,enco:True,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6252162,fgcg:0.7272044,fgcb:0.8676471,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:396,x:33684,y:32675,varname:node_396,prsc:2|diff-238-OUT,spec-1185-OUT,alpha-7097-OUT,refract-1381-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2736,x:32799,y:33396,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_2736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8144,x:31019,y:33828,varname:node_8144,prsc:2,ntxv:0,isnm:False|UVIN-2429-OUT,TEX-3053-TEX;n:type:ShaderForge.SFN_Multiply,id:3984,x:33014,y:33510,varname:node_3984,prsc:2|A-8772-OUT,B-6382-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8772,x:32799,y:33476,ptovrint:False,ptlb:Height_factor,ptin:_Height_factor,varname:node_8772,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.001;n:type:ShaderForge.SFN_Tex2dAsset,id:3053,x:30737,y:34090,ptovrint:False,ptlb:Height_Disp,ptin:_Height_Disp,varname:node_3053,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5272,x:31033,y:33995,varname:_Height_2,prsc:2,ntxv:0,isnm:False|UVIN-3409-OUT,TEX-3053-TEX;n:type:ShaderForge.SFN_TexCoord,id:7553,x:30006,y:33158,varname:node_7553,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2832,x:30253,y:33754,varname:node_2832,prsc:2|A-117-OUT,B-6686-T;n:type:ShaderForge.SFN_Append,id:117,x:30083,y:33674,varname:node_117,prsc:2|A-33-X,B-33-Y;n:type:ShaderForge.SFN_Add,id:2429,x:30564,y:33711,varname:node_2429,prsc:2|A-2765-OUT,B-1698-OUT;n:type:ShaderForge.SFN_Time,id:6686,x:29823,y:33800,varname:node_6686,prsc:2;n:type:ShaderForge.SFN_Color,id:3388,x:32100,y:32307,ptovrint:False,ptlb:color_water_1,ptin:_color_water_1,varname:node_4213,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:1704,x:31286,y:33887,varname:node_1704,prsc:2|A-8144-RGB,B-5272-RGB;n:type:ShaderForge.SFN_TexCoord,id:6457,x:30215,y:34025,varname:node_6457,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1049,x:30200,y:34179,varname:node_1049,prsc:2|A-5573-OUT,B-9880-T;n:type:ShaderForge.SFN_Append,id:5573,x:30030,y:34099,varname:node_5573,prsc:2|A-33-Z,B-33-W;n:type:ShaderForge.SFN_Add,id:3409,x:30564,y:33935,varname:node_3409,prsc:2|A-6457-UVOUT,B-6937-OUT;n:type:ShaderForge.SFN_Time,id:9880,x:29896,y:34270,varname:node_9880,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9965,x:32163,y:32920,ptovrint:False,ptlb:SeaSide_width,ptin:_SeaSide_width,varname:node_9965,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:15;n:type:ShaderForge.SFN_DepthBlend,id:562,x:32374,y:32920,varname:node_562,prsc:2|DIST-9965-OUT;n:type:ShaderForge.SFN_Color,id:8808,x:32140,y:32491,ptovrint:False,ptlb:color_water_2,ptin:_color_water_2,varname:_color_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:883,x:32366,y:32327,varname:node_883,prsc:2|A-8808-RGB,B-3388-RGB,T-6382-OUT;n:type:ShaderForge.SFN_Lerp,id:871,x:32150,y:32158,varname:node_871,prsc:2|A-2826-RGB,B-3763-OUT,T-7282-OUT;n:type:ShaderForge.SFN_Color,id:2826,x:31816,y:31994,ptovrint:False,ptlb:color_foam,ptin:_color_foam,varname:node_2826,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9338235,c2:0.9972616,c3:1,c4:1;n:type:ShaderForge.SFN_Posterize,id:1520,x:32549,y:32327,varname:node_1520,prsc:2|IN-883-OUT,STPS-6955-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6955,x:32348,y:32478,ptovrint:False,ptlb:Posterize_step,ptin:_Posterize_step,varname:node_6955,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Blend,id:238,x:32969,y:32281,varname:node_238,prsc:2,blmd:6,clmp:False|SRC-871-OUT,DST-1797-OUT;n:type:ShaderForge.SFN_Lerp,id:1028,x:32561,y:32839,varname:node_1028,prsc:2|A-1820-OUT,B-4526-OUT,T-562-OUT;n:type:ShaderForge.SFN_Lerp,id:7097,x:32909,y:32899,varname:node_7097,prsc:2|A-122-OUT,B-1028-OUT,T-9757-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4590,x:32163,y:33011,ptovrint:False,ptlb:opacity_foam_width,ptin:_opacity_foam_width,varname:_Depth_blend_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:12;n:type:ShaderForge.SFN_DepthBlend,id:9757,x:32374,y:33047,varname:node_9757,prsc:2|DIST-4590-OUT;n:type:ShaderForge.SFN_DepthBlend,id:4841,x:31382,y:32188,varname:node_4841,prsc:2|DIST-2316-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2316,x:31198,y:32188,ptovrint:False,ptlb:SeaSide_deep_width,ptin:_SeaSide_deep_width,varname:node_2316,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:12;n:type:ShaderForge.SFN_Multiply,id:3763,x:31835,y:32214,varname:node_3763,prsc:2|A-8481-OUT,B-8105-OUT;n:type:ShaderForge.SFN_Color,id:4560,x:31230,y:32019,ptovrint:False,ptlb:SeaSide deep,ptin:_SeaSidedeep,varname:node_4560,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.2862745,c3:0.427451,c4:1;n:type:ShaderForge.SFN_Lerp,id:8481,x:31608,y:32170,varname:node_8481,prsc:2|A-4560-RGB,B-1994-OUT,T-4841-OUT;n:type:ShaderForge.SFN_Vector1,id:1994,x:31541,y:32090,varname:node_1994,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2043,x:31608,y:32318,ptovrint:False,ptlb:Foam_width,ptin:_Foam_width,varname:_deph_black_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:7282,x:31835,y:32332,varname:node_7282,prsc:2|DIST-2043-OUT;n:type:ShaderForge.SFN_Tex2d,id:287,x:31091,y:33435,varname:node_287,prsc:2,ntxv:0,isnm:False|UVIN-2429-OUT,TEX-1415-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1415,x:30819,y:33432,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_1415,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:4086,x:31091,y:33612,varname:node_4086,prsc:2,ntxv:0,isnm:False|UVIN-3409-OUT,TEX-1415-TEX;n:type:ShaderForge.SFN_NormalBlend,id:343,x:31335,y:33513,varname:node_343,prsc:2|BSE-287-RGB,DTL-4086-RGB;n:type:ShaderForge.SFN_Multiply,id:2765,x:30480,y:33516,varname:node_2765,prsc:2|A-4376-OUT,B-7553-UVOUT;n:type:ShaderForge.SFN_Vector2,id:4376,x:30253,y:33484,varname:node_4376,prsc:2,v1:1.8,v2:1.8;n:type:ShaderForge.SFN_NormalVector,id:7149,x:32854,y:33216,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:6001,x:33036,y:33145,varname:node_6001,prsc:2|A-5807-OUT,B-743-OUT,C-7149-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5807,x:32869,y:33121,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_5807,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:1381,x:33219,y:33145,varname:node_1381,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6001-OUT;n:type:ShaderForge.SFN_Tex2d,id:9954,x:31078,y:33280,varname:node_9954,prsc:2,ntxv:0,isnm:False|UVIN-7493-OUT,TEX-1415-TEX;n:type:ShaderForge.SFN_Multiply,id:8865,x:30497,y:33283,varname:node_8865,prsc:2|A-2340-OUT,B-7553-UVOUT;n:type:ShaderForge.SFN_Vector2,id:2340,x:30294,y:33272,varname:node_2340,prsc:2,v1:0.3,v2:0.3;n:type:ShaderForge.SFN_Add,id:7493,x:30652,y:33386,varname:node_7493,prsc:2|A-8865-OUT,B-2832-OUT;n:type:ShaderForge.SFN_Tex2d,id:8418,x:31078,y:33142,varname:node_8418,prsc:2,ntxv:0,isnm:False|UVIN-7254-OUT,TEX-1415-TEX;n:type:ShaderForge.SFN_Add,id:7254,x:30765,y:33159,varname:node_7254,prsc:2|A-8594-OUT,B-1049-OUT;n:type:ShaderForge.SFN_Multiply,id:8594,x:30497,y:33146,varname:node_8594,prsc:2|A-7462-OUT,B-7553-UVOUT;n:type:ShaderForge.SFN_Vector2,id:7462,x:30283,y:33146,varname:node_7462,prsc:2,v1:0.2,v2:0.2;n:type:ShaderForge.SFN_NormalBlend,id:8215,x:31300,y:33193,varname:node_8215,prsc:2|BSE-8418-RGB,DTL-9954-RGB;n:type:ShaderForge.SFN_NormalBlend,id:1589,x:31583,y:33349,varname:node_1589,prsc:2|BSE-8215-OUT,DTL-343-OUT;n:type:ShaderForge.SFN_Lerp,id:743,x:31901,y:33225,varname:node_743,prsc:2|A-7338-RGB,B-1589-OUT,T-7687-OUT;n:type:ShaderForge.SFN_Multiply,id:8720,x:30399,y:34361,varname:node_8720,prsc:2|A-3748-OUT,B-92-OUT;n:type:ShaderForge.SFN_Vector2,id:3748,x:30132,y:34365,varname:node_3748,prsc:2,v1:0.3,v2:0.3;n:type:ShaderForge.SFN_Vector2,id:9452,x:30122,y:34639,varname:node_9452,prsc:2,v1:0.2,v2:0.2;n:type:ShaderForge.SFN_Multiply,id:585,x:30374,y:34562,varname:node_585,prsc:2|A-9452-OUT,B-92-OUT;n:type:ShaderForge.SFN_Tex2d,id:4093,x:31046,y:34158,varname:node_4093,prsc:2,ntxv:0,isnm:False|UVIN-2262-OUT,TEX-3053-TEX;n:type:ShaderForge.SFN_Tex2d,id:6609,x:31055,y:34345,varname:node_6609,prsc:2,ntxv:0,isnm:False|UVIN-1899-OUT,TEX-3053-TEX;n:type:ShaderForge.SFN_Add,id:8848,x:31292,y:34237,varname:node_8848,prsc:2|A-4093-RGB,B-6609-RGB;n:type:ShaderForge.SFN_Add,id:2262,x:30614,y:34383,varname:node_2262,prsc:2|A-8720-OUT,B-1049-OUT;n:type:ShaderForge.SFN_Add,id:1899,x:30614,y:34525,varname:node_1899,prsc:2|A-585-OUT,B-1049-OUT;n:type:ShaderForge.SFN_Blend,id:6382,x:31618,y:34037,varname:node_6382,prsc:2,blmd:10,clmp:True|SRC-1704-OUT,DST-8848-OUT;n:type:ShaderForge.SFN_Append,id:5905,x:29817,y:33226,varname:node_5905,prsc:2|A-8603-X,B-8603-Y;n:type:ShaderForge.SFN_Time,id:2541,x:29597,y:33357,varname:node_2541,prsc:2;n:type:ShaderForge.SFN_Sin,id:5102,x:29817,y:33369,varname:node_5102,prsc:2|IN-2541-T;n:type:ShaderForge.SFN_Multiply,id:1698,x:29994,y:33303,varname:node_1698,prsc:2|A-5905-OUT,B-5102-OUT;n:type:ShaderForge.SFN_Append,id:4916,x:29328,y:34037,varname:node_4916,prsc:2|A-8603-Z,B-8603-W;n:type:ShaderForge.SFN_Time,id:7772,x:29119,y:34164,varname:node_7772,prsc:2;n:type:ShaderForge.SFN_Sin,id:474,x:29328,y:34184,varname:node_474,prsc:2|IN-7772-T;n:type:ShaderForge.SFN_Multiply,id:6937,x:29559,y:34129,varname:node_6937,prsc:2|A-4916-OUT,B-474-OUT;n:type:ShaderForge.SFN_Vector2,id:604,x:30215,y:33920,varname:node_604,prsc:2,v1:2,v2:2;n:type:ShaderForge.SFN_Multiply,id:92,x:30437,y:34065,varname:node_92,prsc:2|A-604-OUT,B-6457-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6872,x:31816,y:31845,varname:node_6872,prsc:2,ntxv:0,isnm:False|UVIN-3400-OUT,TEX-4703-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4703,x:31508,y:31724,ptovrint:False,ptlb:Foam_Albedo,ptin:_Foam_Albedo,varname:node_4703,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:5945,x:30893,y:31610,varname:node_5945,prsc:2|A-1831-X,B-1831-Y;n:type:ShaderForge.SFN_Time,id:4576,x:30594,y:31736,varname:node_4576,prsc:2;n:type:ShaderForge.SFN_Sin,id:817,x:30815,y:31756,varname:node_817,prsc:2|IN-4576-T;n:type:ShaderForge.SFN_Multiply,id:3271,x:31084,y:31772,varname:node_3271,prsc:2|A-5945-OUT,B-817-OUT;n:type:ShaderForge.SFN_TexCoord,id:7774,x:31084,y:31529,varname:node_7774,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4284,x:31282,y:31476,varname:node_4284,prsc:2|A-5411-OUT,B-7774-UVOUT;n:type:ShaderForge.SFN_Vector2,id:5411,x:31084,y:31435,varname:node_5411,prsc:2,v1:1,v2:1;n:type:ShaderForge.SFN_Add,id:8410,x:31508,y:31565,varname:node_8410,prsc:2|A-4284-OUT,B-3271-OUT;n:type:ShaderForge.SFN_Vector2,id:6911,x:31084,y:31676,varname:node_6911,prsc:2,v1:0.8,v2:0.8;n:type:ShaderForge.SFN_Append,id:5086,x:30868,y:31928,varname:node_5086,prsc:2|A-1831-Z,B-1831-W;n:type:ShaderForge.SFN_Add,id:3400,x:31405,y:31884,varname:node_3400,prsc:2|A-1607-OUT,B-752-OUT;n:type:ShaderForge.SFN_Multiply,id:1607,x:31305,y:31676,varname:node_1607,prsc:2|A-7774-UVOUT,B-6911-OUT;n:type:ShaderForge.SFN_Multiply,id:752,x:31084,y:31915,varname:node_752,prsc:2|A-817-OUT,B-5086-OUT;n:type:ShaderForge.SFN_Tex2d,id:5485,x:31814,y:31665,varname:node_5485,prsc:2,ntxv:0,isnm:False|UVIN-8410-OUT,TEX-4703-TEX;n:type:ShaderForge.SFN_Blend,id:6677,x:32086,y:31783,varname:node_6677,prsc:2,blmd:1,clmp:True|SRC-5485-A,DST-6872-A;n:type:ShaderForge.SFN_Vector4Property,id:1831,x:30241,y:31721,ptovrint:False,ptlb:FoamSpeed_x1y1x2y2,ptin:_FoamSpeed_x1y1x2y2,varname:node_1831,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.02,v2:0.02,v3:0.02,v4:0.02;n:type:ShaderForge.SFN_Vector4Property,id:33,x:29515,y:33752,ptovrint:False,ptlb:WaveSpeed x1y1x2y2,ptin:_WaveSpeedx1y1x2y2,varname:node_33,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05,v2:0.05,v3:0.05,v4:0.05;n:type:ShaderForge.SFN_Vector4Property,id:8603,x:28987,y:33562,ptovrint:False,ptlb:WaveSmallSpeed x1y1x2y2,ptin:_WaveSmallSpeedx1y1x2y2,varname:node_8603,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1,v2:0.1,v3:0.1,v4:0.1;n:type:ShaderForge.SFN_Slider,id:4526,x:32019,y:32814,ptovrint:False,ptlb:Opacity / off the ocean,ptin:_Opacityofftheocean,varname:node_4526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.95,max:1;n:type:ShaderForge.SFN_Slider,id:1820,x:32019,y:32714,ptovrint:False,ptlb:Opacity / Sea side,ptin:_OpacitySeaside,varname:node_1820,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Slider,id:1185,x:32891,y:32632,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_1185,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.542735,max:1;n:type:ShaderForge.SFN_Slider,id:7687,x:31482,y:33265,ptovrint:False,ptlb:NRM Intensity,ptin:_NRMIntensity,varname:node_7687,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_DepthBlend,id:9863,x:32073,y:32027,varname:node_9863,prsc:2|DIST-8335-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8335,x:31816,y:32158,ptovrint:False,ptlb:foam_white_width,ptin:_foam_white_width,varname:node_8335,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:4011,x:32319,y:32000,varname:node_4011,prsc:2|A-2826-RGB,B-6677-OUT,T-9863-OUT;n:type:ShaderForge.SFN_Tex2d,id:7338,x:31560,y:33057,ptovrint:False,ptlb:NRM_None,ptin:_NRM_None,varname:node_7338,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Color,id:8415,x:31566,y:32607,ptovrint:False,ptlb:off ocean color,ptin:_offoceancolor,varname:node_8415,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:8105,x:31916,y:32515,varname:node_8105,prsc:2|A-3958-RGB,B-8415-RGB,T-6502-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2314,x:31362,y:32760,ptovrint:False,ptlb:off_ocean_depth,ptin:_off_ocean_depth,varname:_SeaSide_deep_width_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:12;n:type:ShaderForge.SFN_DepthBlend,id:6502,x:31566,y:32760,varname:node_6502,prsc:2|DIST-2314-OUT;n:type:ShaderForge.SFN_Color,id:3958,x:31566,y:32445,ptovrint:False,ptlb:SeaSide_color,ptin:_SeaSide_color,varname:node_3958,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:1797,x:32777,y:32390,varname:node_1797,prsc:2|A-1520-OUT,B-8808-RGB,T-9434-R;n:type:ShaderForge.SFN_Tex2d,id:9434,x:32630,y:32534,ptovrint:False,ptlb:mask_foam,ptin:_mask_foam,varname:node_9434,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-692-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:692,x:32401,y:32541,varname:node_692,prsc:2,uv:0;n:type:ShaderForge.SFN_Clamp01,id:4780,x:32513,y:32706,varname:node_4780,prsc:2|IN-4011-OUT;n:type:ShaderForge.SFN_ComponentMask,id:122,x:32707,y:32745,varname:node_122,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4780-OUT;proporder:3388-8808-6955-1185-8772-2736-2826-8335-4703-4590-2043-1831-1415-7687-33-8603-8415-4526-2314-4560-2316-3958-9965-1820-3053-5807-7338-9434;pass:END;sub:END;*/

Shader "Shader Forge/Water_wave_test" {
    Properties {
        _color_water_1 ("color_water_1", Color) = (1,1,1,1)
        _color_water_2 ("color_water_2", Color) = (0,0,0,1)
        _Posterize_step ("Posterize_step", Float ) = 10
        _Specular ("Specular", Range(0, 1)) = 0.542735
        _Height_factor ("Height_factor", Float ) = 0.001
        _Tesselation ("Tesselation", Float ) = 1
        _color_foam ("color_foam", Color) = (0.9338235,0.9972616,1,1)
        _foam_white_width ("foam_white_width", Float ) = 0
        _Foam_Albedo ("Foam_Albedo", 2D) = "white" {}
        _opacity_foam_width ("opacity_foam_width", Float ) = 12
        _Foam_width ("Foam_width", Float ) = 1
        _FoamSpeed_x1y1x2y2 ("FoamSpeed_x1y1x2y2", Vector) = (0.02,0.02,0.02,0.02)
        _Normal ("Normal", 2D) = "bump" {}
        _NRMIntensity ("NRM Intensity", Range(0, 1)) = 0
        _WaveSpeedx1y1x2y2 ("WaveSpeed x1y1x2y2", Vector) = (0.05,0.05,0.05,0.05)
        _WaveSmallSpeedx1y1x2y2 ("WaveSmallSpeed x1y1x2y2", Vector) = (0.1,0.1,0.1,0.1)
        _offoceancolor ("off ocean color", Color) = (0.5,0.5,0.5,1)
        _Opacityofftheocean ("Opacity / off the ocean", Range(0, 1)) = 0.95
        _off_ocean_depth ("off_ocean_depth", Float ) = 12
        _SeaSidedeep ("SeaSide deep", Color) = (0,0.2862745,0.427451,1)
        _SeaSide_deep_width ("SeaSide_deep_width", Float ) = 12
        _SeaSide_color ("SeaSide_color", Color) = (0.5,0.5,0.5,1)
        _SeaSide_width ("SeaSide_width", Float ) = 15
        _OpacitySeaside ("Opacity / Sea side", Range(0, 1)) = 0.1
        _Height_Disp ("Height_Disp", 2D) = "white" {}
        _Refraction ("Refraction", Float ) = 0
        _NRM_None ("NRM_None", 2D) = "bump" {}
        _mask_foam ("mask_foam", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 2.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Height_Disp; uniform float4 _Height_Disp_ST;
            uniform float4 _color_water_1;
            uniform float _SeaSide_width;
            uniform float4 _color_water_2;
            uniform float4 _color_foam;
            uniform float _Posterize_step;
            uniform float _opacity_foam_width;
            uniform float _SeaSide_deep_width;
            uniform float4 _SeaSidedeep;
            uniform float _Foam_width;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Refraction;
            uniform sampler2D _Foam_Albedo; uniform float4 _Foam_Albedo_ST;
            uniform float4 _FoamSpeed_x1y1x2y2;
            uniform float4 _WaveSpeedx1y1x2y2;
            uniform float4 _WaveSmallSpeedx1y1x2y2;
            uniform float _Opacityofftheocean;
            uniform float _OpacitySeaside;
            uniform float _Specular;
            uniform float _NRMIntensity;
            uniform float _foam_white_width;
            uniform sampler2D _NRM_None; uniform float4 _NRM_None_ST;
            uniform float4 _offoceancolor;
            uniform float _off_ocean_depth;
            uniform float4 _SeaSide_color;
            uniform sampler2D _mask_foam; uniform float4 _mask_foam_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                float4 projPos : TEXCOORD8;
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 _NRM_None_var = UnpackNormal(tex2D(_NRM_None,TRANSFORM_TEX(i.uv0, _NRM_None)));
                float4 node_9880 = _Time + _TimeEditor;
                float2 node_1049 = (float2(_WaveSpeedx1y1x2y2.b,_WaveSpeedx1y1x2y2.a)*node_9880.g);
                float2 node_7254 = ((float2(0.2,0.2)*i.uv0)+node_1049);
                float3 node_8418 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7254, _Normal)));
                float4 node_6686 = _Time + _TimeEditor;
                float2 node_7493 = ((float2(0.3,0.3)*i.uv0)+(float2(_WaveSpeedx1y1x2y2.r,_WaveSpeedx1y1x2y2.g)*node_6686.g));
                float3 node_9954 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7493, _Normal)));
                float3 node_8215_nrm_base = node_8418.rgb + float3(0,0,1);
                float3 node_8215_nrm_detail = node_9954.rgb * float3(-1,-1,1);
                float3 node_8215_nrm_combined = node_8215_nrm_base*dot(node_8215_nrm_base, node_8215_nrm_detail)/node_8215_nrm_base.z - node_8215_nrm_detail;
                float3 node_8215 = node_8215_nrm_combined;
                float4 node_2541 = _Time + _TimeEditor;
                float2 node_2429 = ((float2(1.8,1.8)*i.uv0)+(float2(_WaveSmallSpeedx1y1x2y2.r,_WaveSmallSpeedx1y1x2y2.g)*sin(node_2541.g)));
                float3 node_287 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2429, _Normal)));
                float4 node_7772 = _Time + _TimeEditor;
                float2 node_3409 = (i.uv0+(float2(_WaveSmallSpeedx1y1x2y2.b,_WaveSmallSpeedx1y1x2y2.a)*sin(node_7772.g)));
                float3 node_4086 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3409, _Normal)));
                float3 node_343_nrm_base = node_287.rgb + float3(0,0,1);
                float3 node_343_nrm_detail = node_4086.rgb * float3(-1,-1,1);
                float3 node_343_nrm_combined = node_343_nrm_base*dot(node_343_nrm_base, node_343_nrm_detail)/node_343_nrm_base.z - node_343_nrm_detail;
                float3 node_343 = node_343_nrm_combined;
                float3 node_1589_nrm_base = node_8215 + float3(0,0,1);
                float3 node_1589_nrm_detail = node_343 * float3(-1,-1,1);
                float3 node_1589_nrm_combined = node_1589_nrm_base*dot(node_1589_nrm_base, node_1589_nrm_detail)/node_1589_nrm_base.z - node_1589_nrm_detail;
                float3 node_1589 = node_1589_nrm_combined;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction*lerp(_NRM_None_var.rgb,node_1589,_NRMIntensity)*i.normalDir).rg;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.5; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float normTerm = (specPow + 8.0 ) / (8.0 * Pi);
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*normTerm*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float node_1994 = 1.0;
                float4 node_8144 = tex2D(_Height_Disp,TRANSFORM_TEX(node_2429, _Height_Disp));
                float4 _Height_2 = tex2D(_Height_Disp,TRANSFORM_TEX(node_3409, _Height_Disp));
                float2 node_92 = (float2(2,2)*i.uv0);
                float2 node_2262 = ((float2(0.3,0.3)*node_92)+node_1049);
                float4 node_4093 = tex2D(_Height_Disp,TRANSFORM_TEX(node_2262, _Height_Disp));
                float2 node_1899 = ((float2(0.2,0.2)*node_92)+node_1049);
                float4 node_6609 = tex2D(_Height_Disp,TRANSFORM_TEX(node_1899, _Height_Disp));
                float3 node_6382 = saturate(( (node_4093.rgb+node_6609.rgb) > 0.5 ? (1.0-(1.0-2.0*((node_4093.rgb+node_6609.rgb)-0.5))*(1.0-(node_8144.rgb+_Height_2.rgb))) : (2.0*(node_4093.rgb+node_6609.rgb)*(node_8144.rgb+_Height_2.rgb)) ));
                float4 _mask_foam_var = tex2D(_mask_foam,TRANSFORM_TEX(i.uv0, _mask_foam));
                float3 diffuseColor = (1.0-(1.0-lerp(_color_foam.rgb,(lerp(_SeaSidedeep.rgb,float3(node_1994,node_1994,node_1994),saturate((sceneZ-partZ)/_SeaSide_deep_width))*lerp(_SeaSide_color.rgb,_offoceancolor.rgb,saturate((sceneZ-partZ)/_off_ocean_depth))),saturate((sceneZ-partZ)/_Foam_width)))*(1.0-lerp(floor(lerp(_color_water_2.rgb,_color_water_1.rgb,node_6382) * _Posterize_step) / (_Posterize_step - 1),_color_water_2.rgb,_mask_foam_var.r)));
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float4 node_4576 = _Time + _TimeEditor;
                float node_817 = sin(node_4576.g);
                float2 node_8410 = ((float2(1,1)*i.uv0)+(float2(_FoamSpeed_x1y1x2y2.r,_FoamSpeed_x1y1x2y2.g)*node_817));
                float4 node_5485 = tex2D(_Foam_Albedo,TRANSFORM_TEX(node_8410, _Foam_Albedo));
                float2 node_3400 = ((i.uv0*float2(0.8,0.8))+(node_817*float2(_FoamSpeed_x1y1x2y2.b,_FoamSpeed_x1y1x2y2.a)));
                float4 node_6872 = tex2D(_Foam_Albedo,TRANSFORM_TEX(node_3400, _Foam_Albedo));
                float node_6677 = saturate((node_5485.a*node_6872.a));
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,lerp(saturate(lerp(_color_foam.rgb,float3(node_6677,node_6677,node_6677),saturate((sceneZ-partZ)/_foam_white_width))).r,lerp(_OpacitySeaside,_Opacityofftheocean,saturate((sceneZ-partZ)/_SeaSide_width)),saturate((sceneZ-partZ)/_opacity_foam_width))),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 2.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Height_Disp; uniform float4 _Height_Disp_ST;
            uniform float4 _color_water_1;
            uniform float _SeaSide_width;
            uniform float4 _color_water_2;
            uniform float4 _color_foam;
            uniform float _Posterize_step;
            uniform float _opacity_foam_width;
            uniform float _SeaSide_deep_width;
            uniform float4 _SeaSidedeep;
            uniform float _Foam_width;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Refraction;
            uniform sampler2D _Foam_Albedo; uniform float4 _Foam_Albedo_ST;
            uniform float4 _FoamSpeed_x1y1x2y2;
            uniform float4 _WaveSpeedx1y1x2y2;
            uniform float4 _WaveSmallSpeedx1y1x2y2;
            uniform float _Opacityofftheocean;
            uniform float _OpacitySeaside;
            uniform float _Specular;
            uniform float _NRMIntensity;
            uniform float _foam_white_width;
            uniform sampler2D _NRM_None; uniform float4 _NRM_None_ST;
            uniform float4 _offoceancolor;
            uniform float _off_ocean_depth;
            uniform float4 _SeaSide_color;
            uniform sampler2D _mask_foam; uniform float4 _mask_foam_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                float4 projPos : TEXCOORD8;
                LIGHTING_COORDS(9,10)
                UNITY_FOG_COORDS(11)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 _NRM_None_var = UnpackNormal(tex2D(_NRM_None,TRANSFORM_TEX(i.uv0, _NRM_None)));
                float4 node_9880 = _Time + _TimeEditor;
                float2 node_1049 = (float2(_WaveSpeedx1y1x2y2.b,_WaveSpeedx1y1x2y2.a)*node_9880.g);
                float2 node_7254 = ((float2(0.2,0.2)*i.uv0)+node_1049);
                float3 node_8418 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7254, _Normal)));
                float4 node_6686 = _Time + _TimeEditor;
                float2 node_7493 = ((float2(0.3,0.3)*i.uv0)+(float2(_WaveSpeedx1y1x2y2.r,_WaveSpeedx1y1x2y2.g)*node_6686.g));
                float3 node_9954 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7493, _Normal)));
                float3 node_8215_nrm_base = node_8418.rgb + float3(0,0,1);
                float3 node_8215_nrm_detail = node_9954.rgb * float3(-1,-1,1);
                float3 node_8215_nrm_combined = node_8215_nrm_base*dot(node_8215_nrm_base, node_8215_nrm_detail)/node_8215_nrm_base.z - node_8215_nrm_detail;
                float3 node_8215 = node_8215_nrm_combined;
                float4 node_2541 = _Time + _TimeEditor;
                float2 node_2429 = ((float2(1.8,1.8)*i.uv0)+(float2(_WaveSmallSpeedx1y1x2y2.r,_WaveSmallSpeedx1y1x2y2.g)*sin(node_2541.g)));
                float3 node_287 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2429, _Normal)));
                float4 node_7772 = _Time + _TimeEditor;
                float2 node_3409 = (i.uv0+(float2(_WaveSmallSpeedx1y1x2y2.b,_WaveSmallSpeedx1y1x2y2.a)*sin(node_7772.g)));
                float3 node_4086 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3409, _Normal)));
                float3 node_343_nrm_base = node_287.rgb + float3(0,0,1);
                float3 node_343_nrm_detail = node_4086.rgb * float3(-1,-1,1);
                float3 node_343_nrm_combined = node_343_nrm_base*dot(node_343_nrm_base, node_343_nrm_detail)/node_343_nrm_base.z - node_343_nrm_detail;
                float3 node_343 = node_343_nrm_combined;
                float3 node_1589_nrm_base = node_8215 + float3(0,0,1);
                float3 node_1589_nrm_detail = node_343 * float3(-1,-1,1);
                float3 node_1589_nrm_combined = node_1589_nrm_base*dot(node_1589_nrm_base, node_1589_nrm_detail)/node_1589_nrm_base.z - node_1589_nrm_detail;
                float3 node_1589 = node_1589_nrm_combined;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction*lerp(_NRM_None_var.rgb,node_1589,_NRMIntensity)*i.normalDir).rg;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.5; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float normTerm = (specPow + 8.0 ) / (8.0 * Pi);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*normTerm*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_1994 = 1.0;
                float4 node_8144 = tex2D(_Height_Disp,TRANSFORM_TEX(node_2429, _Height_Disp));
                float4 _Height_2 = tex2D(_Height_Disp,TRANSFORM_TEX(node_3409, _Height_Disp));
                float2 node_92 = (float2(2,2)*i.uv0);
                float2 node_2262 = ((float2(0.3,0.3)*node_92)+node_1049);
                float4 node_4093 = tex2D(_Height_Disp,TRANSFORM_TEX(node_2262, _Height_Disp));
                float2 node_1899 = ((float2(0.2,0.2)*node_92)+node_1049);
                float4 node_6609 = tex2D(_Height_Disp,TRANSFORM_TEX(node_1899, _Height_Disp));
                float3 node_6382 = saturate(( (node_4093.rgb+node_6609.rgb) > 0.5 ? (1.0-(1.0-2.0*((node_4093.rgb+node_6609.rgb)-0.5))*(1.0-(node_8144.rgb+_Height_2.rgb))) : (2.0*(node_4093.rgb+node_6609.rgb)*(node_8144.rgb+_Height_2.rgb)) ));
                float4 _mask_foam_var = tex2D(_mask_foam,TRANSFORM_TEX(i.uv0, _mask_foam));
                float3 diffuseColor = (1.0-(1.0-lerp(_color_foam.rgb,(lerp(_SeaSidedeep.rgb,float3(node_1994,node_1994,node_1994),saturate((sceneZ-partZ)/_SeaSide_deep_width))*lerp(_SeaSide_color.rgb,_offoceancolor.rgb,saturate((sceneZ-partZ)/_off_ocean_depth))),saturate((sceneZ-partZ)/_Foam_width)))*(1.0-lerp(floor(lerp(_color_water_2.rgb,_color_water_1.rgb,node_6382) * _Posterize_step) / (_Posterize_step - 1),_color_water_2.rgb,_mask_foam_var.r)));
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float4 node_4576 = _Time + _TimeEditor;
                float node_817 = sin(node_4576.g);
                float2 node_8410 = ((float2(1,1)*i.uv0)+(float2(_FoamSpeed_x1y1x2y2.r,_FoamSpeed_x1y1x2y2.g)*node_817));
                float4 node_5485 = tex2D(_Foam_Albedo,TRANSFORM_TEX(node_8410, _Foam_Albedo));
                float2 node_3400 = ((i.uv0*float2(0.8,0.8))+(node_817*float2(_FoamSpeed_x1y1x2y2.b,_FoamSpeed_x1y1x2y2.a)));
                float4 node_6872 = tex2D(_Foam_Albedo,TRANSFORM_TEX(node_3400, _Foam_Albedo));
                float node_6677 = saturate((node_5485.a*node_6872.a));
                fixed4 finalRGBA = fixed4(finalColor * lerp(saturate(lerp(_color_foam.rgb,float3(node_6677,node_6677,node_6677),saturate((sceneZ-partZ)/_foam_white_width))).r,lerp(_OpacitySeaside,_Opacityofftheocean,saturate((sceneZ-partZ)/_SeaSide_width)),saturate((sceneZ-partZ)/_opacity_foam_width)),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 2.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Height_Disp; uniform float4 _Height_Disp_ST;
            uniform float4 _color_water_1;
            uniform float4 _color_water_2;
            uniform float4 _color_foam;
            uniform float _Posterize_step;
            uniform float _SeaSide_deep_width;
            uniform float4 _SeaSidedeep;
            uniform float _Foam_width;
            uniform float4 _WaveSpeedx1y1x2y2;
            uniform float4 _WaveSmallSpeedx1y1x2y2;
            uniform float _Specular;
            uniform float4 _offoceancolor;
            uniform float _off_ocean_depth;
            uniform float4 _SeaSide_color;
            uniform sampler2D _mask_foam; uniform float4 _mask_foam_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_1994 = 1.0;
                float4 node_2541 = _Time + _TimeEditor;
                float2 node_2429 = ((float2(1.8,1.8)*i.uv0)+(float2(_WaveSmallSpeedx1y1x2y2.r,_WaveSmallSpeedx1y1x2y2.g)*sin(node_2541.g)));
                float4 node_8144 = tex2D(_Height_Disp,TRANSFORM_TEX(node_2429, _Height_Disp));
                float4 node_7772 = _Time + _TimeEditor;
                float2 node_3409 = (i.uv0+(float2(_WaveSmallSpeedx1y1x2y2.b,_WaveSmallSpeedx1y1x2y2.a)*sin(node_7772.g)));
                float4 _Height_2 = tex2D(_Height_Disp,TRANSFORM_TEX(node_3409, _Height_Disp));
                float2 node_92 = (float2(2,2)*i.uv0);
                float4 node_9880 = _Time + _TimeEditor;
                float2 node_1049 = (float2(_WaveSpeedx1y1x2y2.b,_WaveSpeedx1y1x2y2.a)*node_9880.g);
                float2 node_2262 = ((float2(0.3,0.3)*node_92)+node_1049);
                float4 node_4093 = tex2D(_Height_Disp,TRANSFORM_TEX(node_2262, _Height_Disp));
                float2 node_1899 = ((float2(0.2,0.2)*node_92)+node_1049);
                float4 node_6609 = tex2D(_Height_Disp,TRANSFORM_TEX(node_1899, _Height_Disp));
                float3 node_6382 = saturate(( (node_4093.rgb+node_6609.rgb) > 0.5 ? (1.0-(1.0-2.0*((node_4093.rgb+node_6609.rgb)-0.5))*(1.0-(node_8144.rgb+_Height_2.rgb))) : (2.0*(node_4093.rgb+node_6609.rgb)*(node_8144.rgb+_Height_2.rgb)) ));
                float4 _mask_foam_var = tex2D(_mask_foam,TRANSFORM_TEX(i.uv0, _mask_foam));
                float3 diffColor = (1.0-(1.0-lerp(_color_foam.rgb,(lerp(_SeaSidedeep.rgb,float3(node_1994,node_1994,node_1994),saturate((sceneZ-partZ)/_SeaSide_deep_width))*lerp(_SeaSide_color.rgb,_offoceancolor.rgb,saturate((sceneZ-partZ)/_off_ocean_depth))),saturate((sceneZ-partZ)/_Foam_width)))*(1.0-lerp(floor(lerp(_color_water_2.rgb,_color_water_1.rgb,node_6382) * _Posterize_step) / (_Posterize_step - 1),_color_water_2.rgb,_mask_foam_var.r)));
                float3 specColor = float3(_Specular,_Specular,_Specular);
                o.Albedo = diffColor + specColor * 0.125; // No gloss connected. Assume it's 0.5
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
