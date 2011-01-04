#ifndef APE_ASSEMBLY_H
#define APE_ASSEMBLY_H

extern "C" 
{
#if !defined(ENABLE_ASSEMBLY)
	void Adapt(short * pM, const short * pAdapt, int nDirection, int nOrder){};
	int CalculateDotProduct(const short * pA, const short * pB, int nOrder){ return 0; };
	BOOL GetMMXAvailable(){ return 0; };
#else
	void Adapt(short * pM, const short * pAdapt, int nDirection, int nOrder);
	int CalculateDotProduct(const short * pA, const short * pB, int nOrder);
	BOOL GetMMXAvailable();
#endif
};

#endif // #ifndef APE_ASSEMBLY_H

