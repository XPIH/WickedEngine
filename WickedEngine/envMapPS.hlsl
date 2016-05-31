#include "envMapHF.hlsli"

#define DIRECTIONALLIGHT_SOFT
#include "dirLightHF.hlsli"

#include "objectHF.hlsli"
#include "objectHF_PS.hlsli"

float4 main(PSIn input) : SV_TARGET
{
	OBJECT_PS_MAKE_COMMON

	OBJECT_PS_DEGAMMA

	OBJECT_PS_NORMALMAPPING

	OBJECT_PS_DIRECTIONALLIGHT

	OBJECT_PS_FOG

	OBJECT_PS_OUT_FORWARD
}