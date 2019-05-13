// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,rprd:True,enco:True,rmgx:True,rpth:0,hqsc:True,hqlp:True,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6901961,fgcg:0.8235295,fgcb:0.9490197,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7443,x:34521,y:32843,varname:node_7443,prsc:2|diff-8940-OUT,spec-4354-OUT,gloss-4441-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3046,x:31042,y:33257,varname:node_3046,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:2924,x:31070,y:33660,varname:node_2924,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6237-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7912,x:30888,y:33856,ptovrint:False,ptlb:Angle Rock,ptin:_AngleRock,varname:node_7912,prsc:2,glob:False,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:9636,x:31334,y:33731,varname:node_9636,prsc:2|A-2924-OUT,B-7912-OUT;n:type:ShaderForge.SFN_Divide,id:8444,x:31334,y:33902,varname:node_8444,prsc:2|A-8354-OUT,B-6430-OUT;n:type:ShaderForge.SFN_OneMinus,id:6430,x:31117,y:33902,varname:node_6430,prsc:2|IN-7912-OUT;n:type:ShaderForge.SFN_Clamp01,id:1261,x:31495,y:33731,varname:node_1261,prsc:2|IN-9636-OUT;n:type:ShaderForge.SFN_Multiply,id:7600,x:31730,y:33754,varname:node_7600,prsc:2|A-1261-OUT,B-8444-OUT;n:type:ShaderForge.SFN_OneMinus,id:6768,x:31900,y:33754,varname:node_6768,prsc:2|IN-7600-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2062,x:31764,y:33926,ptovrint:False,ptlb:Hardness,ptin:_Hardness,varname:node_2062,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Power,id:7678,x:32093,y:33754,varname:node_7678,prsc:2|VAL-6768-OUT,EXP-2062-OUT;n:type:ShaderForge.SFN_NormalVector,id:6237,x:30837,y:33660,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:7872,x:31112,y:33421,ptovrint:False,ptlb:Height_Grass,ptin:_Height_Grass,varname:_HeightFallof_copy,prsc:2,glob:False,v1:100;n:type:ShaderForge.SFN_Subtract,id:4845,x:31324,y:33389,varname:node_4845,prsc:2|A-7872-OUT,B-6599-OUT;n:type:ShaderForge.SFN_Divide,id:6599,x:31064,y:33505,varname:node_6599,prsc:2|A-7617-OUT,B-6153-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3379,x:31324,y:33235,varname:node_3379,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3046-XYZ;n:type:ShaderForge.SFN_Subtract,id:428,x:31577,y:33264,varname:node_428,prsc:2|A-3379-OUT,B-4845-OUT;n:type:ShaderForge.SFN_Divide,id:5647,x:31762,y:33275,varname:node_5647,prsc:2|A-428-OUT,B-7617-OUT;n:type:ShaderForge.SFN_Clamp01,id:7082,x:32264,y:33344,varname:node_7082,prsc:2|IN-8882-OUT;n:type:ShaderForge.SFN_Lerp,id:8940,x:33502,y:32626,varname:node_8940,prsc:2|A-8230-OUT,B-4895-OUT,T-7678-OUT;n:type:ShaderForge.SFN_Color,id:4213,x:32426,y:32650,ptovrint:False,ptlb:color_Grass,ptin:_color_Grass,varname:node_4213,prsc:2,glob:False,c1:0.3969432,c2:0.6985294,c3:0.1900411,c4:1;n:type:ShaderForge.SFN_Color,id:3378,x:32908,y:32312,ptovrint:False,ptlb:color_Rock,ptin:_color_Rock,varname:_color_2,prsc:2,glob:False,c1:0.5441177,c2:0.3826788,c3:0.3120675,c4:1;n:type:ShaderForge.SFN_Vector1,id:8354,x:31177,y:33842,varname:node_8354,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6153,x:30831,y:33455,varname:node_6153,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:8230,x:33214,y:32530,varname:node_8230,prsc:2|A-9598-OUT,B-5009-OUT,T-7082-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1968,x:31158,y:32450,varname:node_1968,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4514,x:27662,y:32341,ptovrint:False,ptlb:Height_wet,ptin:_Height_wet,varname:_Height_copy,prsc:2,glob:False,v1:3072;n:type:ShaderForge.SFN_Subtract,id:8217,x:31440,y:32582,varname:node_8217,prsc:2|A-4514-OUT,B-9949-OUT;n:type:ShaderForge.SFN_Divide,id:9949,x:31180,y:32698,varname:node_9949,prsc:2|A-3978-OUT,B-6162-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8645,x:31440,y:32428,varname:node_8645,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1968-XYZ;n:type:ShaderForge.SFN_Subtract,id:3201,x:31693,y:32457,varname:node_3201,prsc:2|A-8645-OUT,B-8217-OUT;n:type:ShaderForge.SFN_Divide,id:3891,x:31886,y:32453,varname:node_3891,prsc:2|A-3201-OUT,B-3978-OUT;n:type:ShaderForge.SFN_Clamp01,id:7588,x:32071,y:32453,varname:node_7588,prsc:2|IN-3891-OUT;n:type:ShaderForge.SFN_Vector1,id:6162,x:30947,y:32648,varname:node_6162,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:9452,x:30781,y:31785,ptovrint:False,ptlb:Sand_wet,ptin:_Sand_wet,varname:node_9452,prsc:2,glob:False,c1:0.5073529,c2:0.4679894,c3:0.3394788,c4:1;n:type:ShaderForge.SFN_Lerp,id:9598,x:32654,y:32343,varname:node_9598,prsc:2|A-8591-OUT,B-3226-RGB,T-7588-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1717,x:29851,y:31223,varname:node_1717,prsc:2;n:type:ShaderForge.SFN_Subtract,id:3688,x:30090,y:31421,varname:node_3688,prsc:2|A-979-OUT,B-6574-OUT;n:type:ShaderForge.SFN_Divide,id:6574,x:29830,y:31537,varname:node_6574,prsc:2|A-6466-OUT,B-6244-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6864,x:30090,y:31267,varname:node_6864,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1717-XYZ;n:type:ShaderForge.SFN_Subtract,id:4489,x:30343,y:31296,varname:node_4489,prsc:2|A-6864-OUT,B-3688-OUT;n:type:ShaderForge.SFN_Vector1,id:6244,x:29577,y:31539,varname:node_6244,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:6594,x:30536,y:31292,varname:node_6594,prsc:2|A-4489-OUT,B-6466-OUT;n:type:ShaderForge.SFN_Clamp01,id:2369,x:30721,y:31292,varname:node_2369,prsc:2|IN-6594-OUT;n:type:ShaderForge.SFN_Lerp,id:9329,x:31011,y:31214,varname:node_9329,prsc:2|A-5500-OUT,B-2228-OUT,T-2369-OUT;n:type:ShaderForge.SFN_Tex2d,id:9544,x:27492,y:31315,varname:node_9544,prsc:2,ntxv:0,isnm:False|UVIN-1012-OUT,TEX-4195-TEX;n:type:ShaderForge.SFN_Vector1,id:5500,x:30546,y:31121,varname:node_5500,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:7170,x:29195,y:30794,varname:node_7170,prsc:2|IN-6137-OUT;n:type:ShaderForge.SFN_Time,id:283,x:28788,y:30737,varname:node_283,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:4195,x:27193,y:31259,ptovrint:False,ptlb:Foam_mov,ptin:_Foam_mov,varname:node_4195,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9439,x:27492,y:31172,varname:node_9439,prsc:2,ntxv:0,isnm:False|UVIN-5122-OUT,TEX-4195-TEX;n:type:ShaderForge.SFN_TexCoord,id:8430,x:26532,y:30623,varname:node_8430,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:6520,x:26715,y:30799,varname:node_6520,prsc:2|A-5910-X,B-5910-Y;n:type:ShaderForge.SFN_Multiply,id:4359,x:26891,y:30799,varname:node_4359,prsc:2|A-6520-OUT,B-5901-T;n:type:ShaderForge.SFN_Time,id:5901,x:26347,y:30930,varname:node_5901,prsc:2;n:type:ShaderForge.SFN_Append,id:7433,x:26665,y:31227,varname:node_7433,prsc:2|A-5910-Z,B-5910-W;n:type:ShaderForge.SFN_Multiply,id:926,x:26932,y:31018,varname:node_926,prsc:2|A-5901-T,B-7433-OUT;n:type:ShaderForge.SFN_Vector2,id:6558,x:26532,y:30539,varname:node_6558,prsc:2,v1:1,v2:1;n:type:ShaderForge.SFN_Multiply,id:7434,x:26752,y:30610,varname:node_7434,prsc:2|A-6558-OUT,B-8430-UVOUT;n:type:ShaderForge.SFN_Add,id:5122,x:27086,y:30716,varname:node_5122,prsc:2|A-7434-OUT,B-4359-OUT;n:type:ShaderForge.SFN_Add,id:1012,x:27120,y:30935,varname:node_1012,prsc:2|A-3597-OUT,B-926-OUT;n:type:ShaderForge.SFN_Multiply,id:6137,x:28981,y:30795,varname:node_6137,prsc:2|A-283-TSL,B-1375-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1375,x:28788,y:30897,ptovrint:False,ptlb:Foam_speed,ptin:_Foam_speed,varname:node_1375,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Code,id:6780,x:29109,y:31383,varname:node_6780,prsc:2,code:,output:2,fname:HeightFoam,width:250,height:112;n:type:ShaderForge.SFN_Vector1,id:5488,x:27216,y:31573,varname:node_5488,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:4052,x:31304,y:31468,varname:node_4052,prsc:2|A-7853-OUT,B-4245-OUT,T-6346-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:159,x:28700,y:31781,varname:node_159,prsc:2;n:type:ShaderForge.SFN_Subtract,id:6593,x:28956,y:32076,varname:node_6593,prsc:2|A-4690-OUT,B-1642-OUT;n:type:ShaderForge.SFN_Divide,id:1642,x:28696,y:32192,varname:node_1642,prsc:2|A-5487-OUT,B-5007-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8692,x:28956,y:31922,varname:node_8692,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-159-XYZ;n:type:ShaderForge.SFN_Subtract,id:3461,x:29209,y:31951,varname:node_3461,prsc:2|A-8692-OUT,B-6593-OUT;n:type:ShaderForge.SFN_Vector1,id:5007,x:28429,y:32225,varname:node_5007,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:1857,x:29402,y:31947,varname:node_1857,prsc:2|A-3461-OUT,B-5487-OUT;n:type:ShaderForge.SFN_Clamp01,id:5820,x:29587,y:31947,varname:node_5820,prsc:2|IN-1857-OUT;n:type:ShaderForge.SFN_Sin,id:9241,x:28463,y:31993,varname:node_9241,prsc:2|IN-6137-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:434,x:28709,y:32346,varname:node_434,prsc:2;n:type:ShaderForge.SFN_Subtract,id:3702,x:28948,y:32544,varname:node_3702,prsc:2|A-2499-OUT,B-3045-OUT;n:type:ShaderForge.SFN_Divide,id:3045,x:28589,y:32546,varname:node_3045,prsc:2|A-207-OUT,B-9204-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6399,x:28948,y:32390,varname:node_6399,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-434-XYZ;n:type:ShaderForge.SFN_Subtract,id:6307,x:29201,y:32419,varname:node_6307,prsc:2|A-6399-OUT,B-3702-OUT;n:type:ShaderForge.SFN_Vector1,id:9204,x:28366,y:32568,varname:node_9204,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:9815,x:29394,y:32415,varname:node_9815,prsc:2|A-6307-OUT,B-207-OUT;n:type:ShaderForge.SFN_Clamp01,id:6346,x:29579,y:32415,varname:node_6346,prsc:2|IN-9815-OUT;n:type:ShaderForge.SFN_Sin,id:3400,x:28070,y:32367,varname:node_3400,prsc:2|IN-6137-OUT;n:type:ShaderForge.SFN_Lerp,id:8591,x:31537,y:31551,varname:node_8591,prsc:2|A-4052-OUT,B-4465-OUT,T-5820-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:979,x:29215,y:31032,varname:node_979,prsc:2|IN-7170-OUT,IMIN-1554-OUT,IMAX-9302-OUT,OMIN-6258-OUT,OMAX-4514-OUT;n:type:ShaderForge.SFN_Vector2,id:6973,x:26551,y:31057,varname:node_6973,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Multiply,id:3597,x:26731,y:30987,varname:node_3597,prsc:2|A-8430-UVOUT,B-6973-OUT;n:type:ShaderForge.SFN_Blend,id:2228,x:27728,y:31260,varname:node_2228,prsc:2,blmd:1,clmp:True|SRC-9544-RGB,DST-9439-RGB;n:type:ShaderForge.SFN_RemapRange,id:9562,x:27208,y:31704,varname:node_9562,prsc:2,frmn:-1,frmx:1,tomn:1,tomx:0|IN-7170-OUT;n:type:ShaderForge.SFN_Lerp,id:6848,x:27515,y:31598,varname:node_6848,prsc:2|A-5488-OUT,B-3680-OUT,T-9562-OUT;n:type:ShaderForge.SFN_Vector1,id:3680,x:27208,y:31629,varname:node_3680,prsc:2,v1:0;n:type:ShaderForge.SFN_Blend,id:4245,x:31400,y:31759,varname:node_4245,prsc:2,blmd:6,clmp:True|SRC-2515-OUT,DST-4465-OUT;n:type:ShaderForge.SFN_Blend,id:7853,x:31281,y:31227,varname:node_7853,prsc:2,blmd:6,clmp:True|SRC-9329-OUT,DST-4465-OUT;n:type:ShaderForge.SFN_Blend,id:2515,x:27934,y:31479,varname:node_2515,prsc:2,blmd:10,clmp:True|SRC-2228-OUT,DST-6848-OUT;n:type:ShaderForge.SFN_Lerp,id:9390,x:34012,y:32996,varname:node_9390,prsc:2|A-3232-OUT,T-7678-OUT;n:type:ShaderForge.SFN_Lerp,id:3232,x:33802,y:33014,varname:node_3232,prsc:2|A-9141-OUT,T-7082-OUT;n:type:ShaderForge.SFN_Lerp,id:9141,x:33418,y:32882,varname:node_9141,prsc:2|T-7588-OUT;n:type:ShaderForge.SFN_Lerp,id:7842,x:34052,y:33246,varname:node_7842,prsc:2|A-8042-OUT,T-7678-OUT;n:type:ShaderForge.SFN_Lerp,id:8042,x:33847,y:33294,varname:node_8042,prsc:2|A-9718-OUT,T-7082-OUT;n:type:ShaderForge.SFN_Lerp,id:9718,x:33463,y:33162,varname:node_9718,prsc:2|A-9245-OUT,T-7588-OUT;n:type:ShaderForge.SFN_Add,id:9245,x:33251,y:33282,varname:node_9245,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2499,x:28457,y:32317,varname:node_2499,prsc:2|IN-3400-OUT,IMIN-2381-OUT,IMAX-4225-OUT,OMIN-3556-OUT,OMAX-3263-OUT;n:type:ShaderForge.SFN_Vector1,id:2381,x:28215,y:32287,varname:node_2381,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:4225,x:28215,y:32361,varname:node_4225,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4690,x:28714,y:32005,varname:node_4690,prsc:2|IN-9241-OUT,IMIN-2381-OUT,IMAX-4225-OUT,OMIN-9503-OUT,OMAX-4514-OUT;n:type:ShaderForge.SFN_Subtract,id:9503,x:28070,y:32164,varname:node_9503,prsc:2|A-4514-OUT,B-1562-OUT;n:type:ShaderForge.SFN_Subtract,id:3263,x:28070,y:32519,varname:node_3263,prsc:2|A-4514-OUT,B-3705-OUT;n:type:ShaderForge.SFN_Vector1,id:3705,x:27793,y:32518,varname:node_3705,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Subtract,id:3556,x:28070,y:32665,varname:node_3556,prsc:2|A-4514-OUT,B-8452-OUT;n:type:ShaderForge.SFN_Vector1,id:8452,x:27793,y:32588,varname:node_8452,prsc:2,v1:1.01;n:type:ShaderForge.SFN_Vector4Property,id:5910,x:26008,y:31005,ptovrint:False,ptlb:FoamSpeed_x1_y1_x2_y2,ptin:_FoamSpeed_x1_y1_x2_y2,varname:node_5910,prsc:2,glob:False,v1:0.01,v2:0.01,v3:0.02,v4:0.02;n:type:ShaderForge.SFN_Vector1,id:1562,x:27827,y:32187,varname:node_1562,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1554,x:28800,y:31030,varname:node_1554,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:9302,x:28800,y:31084,varname:node_9302,prsc:2,v1:1;n:type:ShaderForge.SFN_Subtract,id:6258,x:28841,y:31156,varname:node_6258,prsc:2|A-4514-OUT,B-3629-OUT;n:type:ShaderForge.SFN_Slider,id:3629,x:28429,y:31212,ptovrint:False,ptlb:Foam_Width,ptin:_Foam_Width,varname:node_3629,prsc:2,min:3,cur:3,max:6;n:type:ShaderForge.SFN_Vector1,id:207,x:28366,y:32658,cmnt:Foam_fallof,varname:node_207,prsc:2,v1:0.03;n:type:ShaderForge.SFN_Vector1,id:5487,x:28429,y:32164,cmnt:Foam_Hardness,varname:node_5487,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Vector1,id:6466,x:29570,y:31392,cmnt:Fallof_foam_wet,varname:node_6466,prsc:2,v1:2;n:type:ShaderForge.SFN_Slider,id:3978,x:30801,y:32768,ptovrint:False,ptlb:Fallof_Sand_Wet,ptin:_Fallof_Sand_Wet,varname:node_3978,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7617,x:30609,y:33587,ptovrint:False,ptlb:Fallof_Grass,ptin:_Fallof_Grass,varname:node_7617,prsc:2,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Slider,id:4354,x:33788,y:32847,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_4354,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4441,x:34061,y:32941,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:node_4441,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:2068,x:32908,y:32135,ptovrint:False,ptlb:Rock_Albedo,ptin:_Rock_Albedo,varname:node_2068,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3226,x:30781,y:31980,ptovrint:False,ptlb:Sand_Albedo,ptin:_Sand_Albedo,varname:node_3226,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4465,x:31054,y:31798,varname:node_4465,prsc:2|A-9452-RGB,B-3226-RGB;n:type:ShaderForge.SFN_TexCoord,id:6819,x:32536,y:32181,varname:node_6819,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4895,x:33088,y:32254,varname:node_4895,prsc:2|A-2068-RGB,B-3378-RGB;n:type:ShaderForge.SFN_Tex2d,id:9337,x:32426,y:32471,ptovrint:False,ptlb:Grass_Albedo,ptin:_Grass_Albedo,varname:node_9337,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7400,x:31543,y:33533,varname:node_7400,prsc:2,ntxv:0,isnm:False|TEX-5179-TEX;n:type:ShaderForge.SFN_Multiply,id:3414,x:31776,y:33533,varname:node_3414,prsc:2|A-5023-OUT,B-7400-R;n:type:ShaderForge.SFN_Add,id:6635,x:31956,y:33484,varname:node_6635,prsc:2|A-5023-OUT,B-3414-OUT;n:type:ShaderForge.SFN_Power,id:8882,x:32173,y:33515,varname:node_8882,prsc:2|VAL-6635-OUT,EXP-6129-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6129,x:31935,y:33652,ptovrint:False,ptlb:mask_hardness,ptin:_mask_hardness,varname:node_6129,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:5023,x:31933,y:33265,varname:node_5023,prsc:2|IN-5647-OUT;n:type:ShaderForge.SFN_Lerp,id:5009,x:32992,y:32543,varname:node_5009,prsc:2|A-9337-RGB,B-4213-RGB,T-1705-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5208,x:31943,y:32966,ptovrint:False,ptlb:grass_distance,ptin:_grass_distance,varname:node_5208,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:3887,x:31760,y:32718,varname:node_3887,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:6736,x:31760,y:32852,varname:node_6736,prsc:2;n:type:ShaderForge.SFN_Distance,id:1848,x:31963,y:32807,varname:node_1848,prsc:2|A-3887-XYZ,B-6736-XYZ;n:type:ShaderForge.SFN_Divide,id:4349,x:32171,y:32804,varname:node_4349,prsc:2|A-1848-OUT,B-5208-OUT;n:type:ShaderForge.SFN_Power,id:7105,x:32401,y:32804,varname:node_7105,prsc:2|VAL-4349-OUT,EXP-1425-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1425,x:32171,y:32966,ptovrint:False,ptlb:grass_distance_Fallof,ptin:_grass_distance_Fallof,varname:_grass_distance_copy,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:1705,x:32597,y:32793,varname:node_1705,prsc:2|IN-7105-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5179,x:31324,y:33559,ptovrint:False,ptlb:Mask_Blend,ptin:_Mask_Blend,varname:node_5179,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7461,x:31667,y:34001,varname:node_7461,prsc:2,ntxv:0,isnm:False|TEX-5179-TEX;n:type:ShaderForge.SFN_Clamp01,id:4733,x:32611,y:33868,varname:node_4733,prsc:2|IN-126-OUT;n:type:ShaderForge.SFN_Multiply,id:4234,x:32014,y:34046,varname:node_4234,prsc:2|A-7678-OUT,B-7461-R;n:type:ShaderForge.SFN_Add,id:8031,x:32303,y:34008,varname:node_8031,prsc:2|A-7678-OUT,B-4234-OUT;n:type:ShaderForge.SFN_Power,id:126,x:32520,y:34039,varname:node_126,prsc:2|VAL-8031-OUT,EXP-6129-OUT;proporder:9337-5208-1425-4213-7872-7617-2068-3378-7912-2062-3226-9452-4514-3978-4354-4441-4195-3629-5910-1375-6129-5179;pass:END;sub:END;*/

Shader "Shader Forge/Landscape" {
    Properties {
        _Grass_Albedo ("Grass_Albedo", 2D) = "white" {}
        _grass_distance ("grass_distance", Float ) = 0
        _grass_distance_Fallof ("grass_distance_Fallof", Float ) = 0
        _color_Grass ("color_Grass", Color) = (0.3969432,0.6985294,0.1900411,1)
        _Height_Grass ("Height_Grass", Float ) = 100
        _Fallof_Grass ("Fallof_Grass", Range(0, 10)) = 1
        _Rock_Albedo ("Rock_Albedo", 2D) = "white" {}
        _color_Rock ("color_Rock", Color) = (0.5441177,0.3826788,0.3120675,1)
        _AngleRock ("Angle Rock", Float ) = 0.5
        _Hardness ("Hardness", Float ) = 5
        _Sand_Albedo ("Sand_Albedo", 2D) = "white" {}
        _Sand_wet ("Sand_wet", Color) = (0.5073529,0.4679894,0.3394788,1)
        _Height_wet ("Height_wet", Float ) = 3072
        _Fallof_Sand_Wet ("Fallof_Sand_Wet", Range(0, 1)) = 0
        _Specular ("Specular", Range(0, 1)) = 0
        _Roughness ("Roughness", Range(0, 1)) = 0
        _Foam_mov ("Foam_mov", 2D) = "white" {}
        _Foam_Width ("Foam_Width", Range(3, 6)) = 3
        _FoamSpeed_x1_y1_x2_y2 ("FoamSpeed_x1_y1_x2_y2", Vector) = (0.01,0.01,0.02,0.02)
        _Foam_speed ("Foam_speed", Float ) = 0
        _mask_hardness ("mask_hardness", Float ) = 0
        _Mask_Blend ("Mask_Blend", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _AngleRock;
            uniform float _Hardness;
            uniform float _Height_Grass;
            uniform float4 _color_Grass;
            uniform float4 _color_Rock;
            uniform float _Height_wet;
            uniform float4 _Sand_wet;
            uniform sampler2D _Foam_mov; uniform float4 _Foam_mov_ST;
            uniform float _Foam_speed;
            uniform float4 _FoamSpeed_x1_y1_x2_y2;
            uniform float _Foam_Width;
            uniform float _Fallof_Sand_Wet;
            uniform float _Fallof_Grass;
            uniform float _Specular;
            uniform float _Roughness;
            uniform sampler2D _Rock_Albedo; uniform float4 _Rock_Albedo_ST;
            uniform sampler2D _Sand_Albedo; uniform float4 _Sand_Albedo_ST;
            uniform sampler2D _Grass_Albedo; uniform float4 _Grass_Albedo_ST;
            uniform float _mask_hardness;
            uniform float _grass_distance;
            uniform float _grass_distance_Fallof;
            uniform sampler2D _Mask_Blend; uniform float4 _Mask_Blend_ST;
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
                LIGHTING_COORDS(7,8)
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
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
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
                UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float node_5500 = 0.0;
                float4 node_5901 = _Time + _TimeEditor;
                float2 node_1012 = ((i.uv0*float2(0.5,0.5))+(node_5901.g*float2(_FoamSpeed_x1_y1_x2_y2.b,_FoamSpeed_x1_y1_x2_y2.a)));
                float4 node_9544 = tex2D(_Foam_mov,TRANSFORM_TEX(node_1012, _Foam_mov));
                float2 node_5122 = ((float2(1,1)*i.uv0)+(float2(_FoamSpeed_x1_y1_x2_y2.r,_FoamSpeed_x1_y1_x2_y2.g)*node_5901.g));
                float4 node_9439 = tex2D(_Foam_mov,TRANSFORM_TEX(node_5122, _Foam_mov));
                float3 node_2228 = saturate((node_9544.rgb*node_9439.rgb));
                float4 node_283 = _Time + _TimeEditor;
                float node_6137 = (node_283.r*_Foam_speed);
                float node_7170 = sin(node_6137);
                float node_1554 = (-1.0);
                float node_6258 = (_Height_wet-_Foam_Width);
                float node_6466 = 2.0; // Fallof_foam_wet
                float4 _Sand_Albedo_var = tex2D(_Sand_Albedo,TRANSFORM_TEX(i.uv0, _Sand_Albedo));
                float3 node_4465 = (_Sand_wet.rgb*_Sand_Albedo_var.rgb);
                float node_2381 = (-1.0);
                float node_4225 = 1.0;
                float node_3556 = (_Height_wet-1.01);
                float node_207 = 0.03; // Foam_fallof
                float node_9503 = (_Height_wet-1.0);
                float node_5487 = 0.001; // Foam_Hardness
                float node_7588 = saturate(((i.posWorld.rgb.g-(_Height_wet-(_Fallof_Sand_Wet/1.0)))/_Fallof_Sand_Wet));
                float4 _Grass_Albedo_var = tex2D(_Grass_Albedo,TRANSFORM_TEX(i.uv0, _Grass_Albedo));
                float node_5023 = saturate(((i.posWorld.rgb.g-(_Height_Grass-(_Fallof_Grass/1.0)))/_Fallof_Grass));
                float4 node_7400 = tex2D(_Mask_Blend,TRANSFORM_TEX(i.uv0, _Mask_Blend));
                float node_7082 = saturate(pow((node_5023+(node_5023*node_7400.r)),_mask_hardness));
                float4 _Rock_Albedo_var = tex2D(_Rock_Albedo,TRANSFORM_TEX(i.uv0, _Rock_Albedo));
                float node_7678 = pow((1.0 - (saturate((i.normalDir.g-_AngleRock))*(1.0/(1.0 - _AngleRock)))),_Hardness);
                float3 diffuseColor = lerp(lerp(lerp(lerp(lerp(saturate((1.0-(1.0-lerp(float3(node_5500,node_5500,node_5500),node_2228,saturate(((i.posWorld.rgb.g-((node_6258 + ( (node_7170 - node_1554) * (_Height_wet - node_6258) ) / (1.0 - node_1554))-(node_6466/1.0)))/node_6466))))*(1.0-node_4465))),saturate((1.0-(1.0-saturate(( lerp(1.0,0.0,(node_7170*-0.5+0.5)) > 0.5 ? (1.0-(1.0-2.0*(lerp(1.0,0.0,(node_7170*-0.5+0.5))-0.5))*(1.0-node_2228)) : (2.0*lerp(1.0,0.0,(node_7170*-0.5+0.5))*node_2228) )))*(1.0-node_4465))),saturate(((i.posWorld.rgb.g-((node_3556 + ( (sin(node_6137) - node_2381) * ((_Height_wet-0.01) - node_3556) ) / (node_4225 - node_2381))-(node_207/1.0)))/node_207))),node_4465,saturate(((i.posWorld.rgb.g-((node_9503 + ( (sin(node_6137) - node_2381) * (_Height_wet - node_9503) ) / (node_4225 - node_2381))-(node_5487/1.0)))/node_5487))),_Sand_Albedo_var.rgb,node_7588),lerp(_Grass_Albedo_var.rgb,_color_Grass.rgb,saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_grass_distance),_grass_distance_Fallof))),node_7082),(_Rock_Albedo_var.rgb*_color_Rock.rgb),node_7678);
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _AngleRock;
            uniform float _Hardness;
            uniform float _Height_Grass;
            uniform float4 _color_Grass;
            uniform float4 _color_Rock;
            uniform float _Height_wet;
            uniform float4 _Sand_wet;
            uniform sampler2D _Foam_mov; uniform float4 _Foam_mov_ST;
            uniform float _Foam_speed;
            uniform float4 _FoamSpeed_x1_y1_x2_y2;
            uniform float _Foam_Width;
            uniform float _Fallof_Sand_Wet;
            uniform float _Fallof_Grass;
            uniform float _Specular;
            uniform float _Roughness;
            uniform sampler2D _Rock_Albedo; uniform float4 _Rock_Albedo_ST;
            uniform sampler2D _Sand_Albedo; uniform float4 _Sand_Albedo_ST;
            uniform sampler2D _Grass_Albedo; uniform float4 _Grass_Albedo_ST;
            uniform float _mask_hardness;
            uniform float _grass_distance;
            uniform float _grass_distance_Fallof;
            uniform sampler2D _Mask_Blend; uniform float4 _Mask_Blend_ST;
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
                LIGHTING_COORDS(7,8)
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
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - _Roughness; // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float node_5500 = 0.0;
                float4 node_5901 = _Time + _TimeEditor;
                float2 node_1012 = ((i.uv0*float2(0.5,0.5))+(node_5901.g*float2(_FoamSpeed_x1_y1_x2_y2.b,_FoamSpeed_x1_y1_x2_y2.a)));
                float4 node_9544 = tex2D(_Foam_mov,TRANSFORM_TEX(node_1012, _Foam_mov));
                float2 node_5122 = ((float2(1,1)*i.uv0)+(float2(_FoamSpeed_x1_y1_x2_y2.r,_FoamSpeed_x1_y1_x2_y2.g)*node_5901.g));
                float4 node_9439 = tex2D(_Foam_mov,TRANSFORM_TEX(node_5122, _Foam_mov));
                float3 node_2228 = saturate((node_9544.rgb*node_9439.rgb));
                float4 node_283 = _Time + _TimeEditor;
                float node_6137 = (node_283.r*_Foam_speed);
                float node_7170 = sin(node_6137);
                float node_1554 = (-1.0);
                float node_6258 = (_Height_wet-_Foam_Width);
                float node_6466 = 2.0; // Fallof_foam_wet
                float4 _Sand_Albedo_var = tex2D(_Sand_Albedo,TRANSFORM_TEX(i.uv0, _Sand_Albedo));
                float3 node_4465 = (_Sand_wet.rgb*_Sand_Albedo_var.rgb);
                float node_2381 = (-1.0);
                float node_4225 = 1.0;
                float node_3556 = (_Height_wet-1.01);
                float node_207 = 0.03; // Foam_fallof
                float node_9503 = (_Height_wet-1.0);
                float node_5487 = 0.001; // Foam_Hardness
                float node_7588 = saturate(((i.posWorld.rgb.g-(_Height_wet-(_Fallof_Sand_Wet/1.0)))/_Fallof_Sand_Wet));
                float4 _Grass_Albedo_var = tex2D(_Grass_Albedo,TRANSFORM_TEX(i.uv0, _Grass_Albedo));
                float node_5023 = saturate(((i.posWorld.rgb.g-(_Height_Grass-(_Fallof_Grass/1.0)))/_Fallof_Grass));
                float4 node_7400 = tex2D(_Mask_Blend,TRANSFORM_TEX(i.uv0, _Mask_Blend));
                float node_7082 = saturate(pow((node_5023+(node_5023*node_7400.r)),_mask_hardness));
                float4 _Rock_Albedo_var = tex2D(_Rock_Albedo,TRANSFORM_TEX(i.uv0, _Rock_Albedo));
                float node_7678 = pow((1.0 - (saturate((i.normalDir.g-_AngleRock))*(1.0/(1.0 - _AngleRock)))),_Hardness);
                float3 diffuseColor = lerp(lerp(lerp(lerp(lerp(saturate((1.0-(1.0-lerp(float3(node_5500,node_5500,node_5500),node_2228,saturate(((i.posWorld.rgb.g-((node_6258 + ( (node_7170 - node_1554) * (_Height_wet - node_6258) ) / (1.0 - node_1554))-(node_6466/1.0)))/node_6466))))*(1.0-node_4465))),saturate((1.0-(1.0-saturate(( lerp(1.0,0.0,(node_7170*-0.5+0.5)) > 0.5 ? (1.0-(1.0-2.0*(lerp(1.0,0.0,(node_7170*-0.5+0.5))-0.5))*(1.0-node_2228)) : (2.0*lerp(1.0,0.0,(node_7170*-0.5+0.5))*node_2228) )))*(1.0-node_4465))),saturate(((i.posWorld.rgb.g-((node_3556 + ( (sin(node_6137) - node_2381) * ((_Height_wet-0.01) - node_3556) ) / (node_4225 - node_2381))-(node_207/1.0)))/node_207))),node_4465,saturate(((i.posWorld.rgb.g-((node_9503 + ( (sin(node_6137) - node_2381) * (_Height_wet - node_9503) ) / (node_4225 - node_2381))-(node_5487/1.0)))/node_5487))),_Sand_Albedo_var.rgb,node_7588),lerp(_Grass_Albedo_var.rgb,_color_Grass.rgb,saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_grass_distance),_grass_distance_Fallof))),node_7082),(_Rock_Albedo_var.rgb*_color_Rock.rgb),node_7678);
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _AngleRock;
            uniform float _Hardness;
            uniform float _Height_Grass;
            uniform float4 _color_Grass;
            uniform float4 _color_Rock;
            uniform float _Height_wet;
            uniform float4 _Sand_wet;
            uniform sampler2D _Foam_mov; uniform float4 _Foam_mov_ST;
            uniform float _Foam_speed;
            uniform float4 _FoamSpeed_x1_y1_x2_y2;
            uniform float _Foam_Width;
            uniform float _Fallof_Sand_Wet;
            uniform float _Fallof_Grass;
            uniform float _Specular;
            uniform float _Roughness;
            uniform sampler2D _Rock_Albedo; uniform float4 _Rock_Albedo_ST;
            uniform sampler2D _Sand_Albedo; uniform float4 _Sand_Albedo_ST;
            uniform sampler2D _Grass_Albedo; uniform float4 _Grass_Albedo_ST;
            uniform float _mask_hardness;
            uniform float _grass_distance;
            uniform float _grass_distance_Fallof;
            uniform sampler2D _Mask_Blend; uniform float4 _Mask_Blend_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_5500 = 0.0;
                float4 node_5901 = _Time + _TimeEditor;
                float2 node_1012 = ((i.uv0*float2(0.5,0.5))+(node_5901.g*float2(_FoamSpeed_x1_y1_x2_y2.b,_FoamSpeed_x1_y1_x2_y2.a)));
                float4 node_9544 = tex2D(_Foam_mov,TRANSFORM_TEX(node_1012, _Foam_mov));
                float2 node_5122 = ((float2(1,1)*i.uv0)+(float2(_FoamSpeed_x1_y1_x2_y2.r,_FoamSpeed_x1_y1_x2_y2.g)*node_5901.g));
                float4 node_9439 = tex2D(_Foam_mov,TRANSFORM_TEX(node_5122, _Foam_mov));
                float3 node_2228 = saturate((node_9544.rgb*node_9439.rgb));
                float4 node_283 = _Time + _TimeEditor;
                float node_6137 = (node_283.r*_Foam_speed);
                float node_7170 = sin(node_6137);
                float node_1554 = (-1.0);
                float node_6258 = (_Height_wet-_Foam_Width);
                float node_6466 = 2.0; // Fallof_foam_wet
                float4 _Sand_Albedo_var = tex2D(_Sand_Albedo,TRANSFORM_TEX(i.uv0, _Sand_Albedo));
                float3 node_4465 = (_Sand_wet.rgb*_Sand_Albedo_var.rgb);
                float node_2381 = (-1.0);
                float node_4225 = 1.0;
                float node_3556 = (_Height_wet-1.01);
                float node_207 = 0.03; // Foam_fallof
                float node_9503 = (_Height_wet-1.0);
                float node_5487 = 0.001; // Foam_Hardness
                float node_7588 = saturate(((i.posWorld.rgb.g-(_Height_wet-(_Fallof_Sand_Wet/1.0)))/_Fallof_Sand_Wet));
                float4 _Grass_Albedo_var = tex2D(_Grass_Albedo,TRANSFORM_TEX(i.uv0, _Grass_Albedo));
                float node_5023 = saturate(((i.posWorld.rgb.g-(_Height_Grass-(_Fallof_Grass/1.0)))/_Fallof_Grass));
                float4 node_7400 = tex2D(_Mask_Blend,TRANSFORM_TEX(i.uv0, _Mask_Blend));
                float node_7082 = saturate(pow((node_5023+(node_5023*node_7400.r)),_mask_hardness));
                float4 _Rock_Albedo_var = tex2D(_Rock_Albedo,TRANSFORM_TEX(i.uv0, _Rock_Albedo));
                float node_7678 = pow((1.0 - (saturate((i.normalDir.g-_AngleRock))*(1.0/(1.0 - _AngleRock)))),_Hardness);
                float3 diffColor = lerp(lerp(lerp(lerp(lerp(saturate((1.0-(1.0-lerp(float3(node_5500,node_5500,node_5500),node_2228,saturate(((i.posWorld.rgb.g-((node_6258 + ( (node_7170 - node_1554) * (_Height_wet - node_6258) ) / (1.0 - node_1554))-(node_6466/1.0)))/node_6466))))*(1.0-node_4465))),saturate((1.0-(1.0-saturate(( lerp(1.0,0.0,(node_7170*-0.5+0.5)) > 0.5 ? (1.0-(1.0-2.0*(lerp(1.0,0.0,(node_7170*-0.5+0.5))-0.5))*(1.0-node_2228)) : (2.0*lerp(1.0,0.0,(node_7170*-0.5+0.5))*node_2228) )))*(1.0-node_4465))),saturate(((i.posWorld.rgb.g-((node_3556 + ( (sin(node_6137) - node_2381) * ((_Height_wet-0.01) - node_3556) ) / (node_4225 - node_2381))-(node_207/1.0)))/node_207))),node_4465,saturate(((i.posWorld.rgb.g-((node_9503 + ( (sin(node_6137) - node_2381) * (_Height_wet - node_9503) ) / (node_4225 - node_2381))-(node_5487/1.0)))/node_5487))),_Sand_Albedo_var.rgb,node_7588),lerp(_Grass_Albedo_var.rgb,_color_Grass.rgb,saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_grass_distance),_grass_distance_Fallof))),node_7082),(_Rock_Albedo_var.rgb*_color_Rock.rgb),node_7678);
                float3 specColor = float3(_Specular,_Specular,_Specular);
                float specularMonochrome = max(max(specColor.r, specColor.g),specColor.b);
                diffColor *= (1.0-specularMonochrome);
                float roughness = _Roughness;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
