uniform float CrushFactor = 8.0;

float4 mainImage(VertData v_in) : TARGET
{

	float4 color = image.Sample(textureSampler, v_in.uv);
	return float4(round(color*CrushFactor)/CrushFactor);
}
