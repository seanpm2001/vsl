
module vmath

const (
	gamma_p  = [
		1.60119522476751861407e-04,
		1.19135147006586384913e-03,
		1.04213797561761569935e-02,
		4.76367800457137231464e-02,
		2.07448227648435975150e-01,
		4.94214826801497100753e-01,
		9.99999999999999996796e-01,
	]
	gamma_q  = [
		-2.31581873324120129819e-05,
		5.39605580493303397842e-04,
		-4.45641913851797240494e-03,
		1.18139785222060435552e-02,
		3.58236398605498653373e-02,
		-2.34591795718243348568e-01,
		7.14304917030273074085e-02,
		1.00000000000000000320e+00,
	]
	gamma_s  = [
		7.87311395793093628397e-04,
		-2.29549961613378126380e-04,
		-2.68132617805781232825e-03,
		3.47222221605458667310e-03,
		8.33333333333482257126e-02,
	]
	lgamma_a = [
		7.72156649015328655494e-02, // 0x3FB3C467E37DB0C8
		3.22467033424113591611e-01, // 0x3FD4A34CC4A60FAD
		6.73523010531292681824e-02, // 0x3FB13E001A5562A7
		2.05808084325167332806e-02, // 0x3F951322AC92547B
		7.38555086081402883957e-03, // 0x3F7E404FB68FEFE8
		2.89051383673415629091e-03, // 0x3F67ADD8CCB7926B
		1.19270763183362067845e-03, // 0x3F538A94116F3F5D
		5.10069792153511336608e-04, // 0x3F40B6C689B99C00
		2.20862790713908385557e-04, // 0x3F2CF2ECED10E54D
		1.08011567247583939954e-04, // 0x3F1C5088987DFB07
		2.52144565451257326939e-05, // 0x3EFA7074428CFA52
		4.48640949618915160150e-05, // 0x3F07858E90A45837
	]
	lgamma_r = [
		1.0, // placeholder
		1.39200533467621045958e+00, // 0x3FF645A762C4AB74
		7.21935547567138069525e-01, // 0x3FE71A1893D3DCDC
		1.71933865632803078993e-01, // 0x3FC601EDCCFBDF27
		1.86459191715652901344e-02, // 0x3F9317EA742ED475
		7.77942496381893596434e-04, // 0x3F497DDACA41A95B
		7.32668430744625636189e-06, // 0x3EDEBAF7A5B38140
	]
	lgamma_s = [
		-7.72156649015328655494e-02, // 0xBFB3C467E37DB0C8
		2.14982415960608852501e-01, // 0x3FCB848B36E20878
		3.25778796408930981787e-01, // 0x3FD4D98F4F139F59
		1.46350472652464452805e-01, // 0x3FC2BB9CBEE5F2F7
		2.66422703033638609560e-02, // 0x3F9B481C7E939961
		1.84028451407337715652e-03, // 0x3F5E26B67368F239
		3.19475326584100867617e-05, // 0x3F00BFECDD17E945
	]
	lgamma_t = [
		4.83836122723810047042e-01, // 0x3FDEF72BC8EE38A2
                -1.47587722994593911752e-01, // 0xBFC2E4278DC6C509
		6.46249402391333854778e-02, // 0x3FB08B4294D5419B
                -3.27885410759859649565e-02, // 0xBFA0C9A8DF35B713
		1.79706750811820387126e-02, // 0x3F9266E7970AF9EC
                -1.03142241298341437450e-02, // 0xBF851F9FBA91EC6A
		6.10053870246291332635e-03, // 0x3F78FCE0E370E344
                -3.68452016781138256760e-03, // 0xBF6E2EFFB3E914D7
		2.25964780900612472250e-03, // 0x3F6282D32E15C915
                -1.40346469989232843813e-03, // 0xBF56FE8EBF2D1AF1
		8.81081882437654011382e-04, // 0x3F4CDF0CEF61A8E9
                -5.38595305356740546715e-04, // 0xBF41A6109C73E0EC
		3.15632070903625950361e-04, // 0x3F34AF6D6C0EBBF7
                -3.12754168375120860518e-04, // 0xBF347F24ECC38C38
		3.35529192635519073543e-04, // 0x3F35FD3EE8C2D3F4
	]
	lgamma_u = [
		-7.72156649015328655494e-02, // 0xBFB3C467E37DB0C8
		6.32827064025093366517e-01, // 0x3FE4401E8B005DFF
		1.45492250137234768737e+00, // 0x3FF7475CD119BD6F
		9.77717527963372745603e-01, // 0x3FEF497644EA8450
		2.28963728064692451092e-01, // 0x3FCD4EAEF6010924
		1.33810918536787660377e-02, // 0x3F8B678BBF2BAB09
	]
	lgamma_v = [
		1.0,
		2.45597793713041134822e+00, // 0x4003A5D7C2BD619C
		2.12848976379893395361e+00, // 0x40010725A42B18F5
		7.69285150456672783825e-01, // 0x3FE89DFBE45050AF
		1.04222645593369134254e-01, // 0x3FBAAE55D6537C88
		3.21709242282423911810e-03, // 0x3F6A5ABB57D0CF61
	]
	lgamma_w = [
		4.18938533204672725052e-01, // 0x3FDACFE390C97D69
		8.33333333333329678849e-02, // 0x3FB555555555553B
                -2.77777777728775536470e-03, // 0xBF66C16C16B02E5C
		7.93650558643019558500e-04, // 0x3F4A019F98CF38B6
                -5.95187557450339963135e-04, // 0xBF4380CB8C0FE741
		8.36339918996282139126e-04, // 0x3F4B67BA4CDAD5D1
                -1.63092934096575273989e-03, // 0xBF5AB89D0B9E43E4
	]
)
