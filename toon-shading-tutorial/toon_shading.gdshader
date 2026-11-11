shader_type spatial;

uniform vec3 albedo : source_color;

void fragment() {
	ALBEDO = albedo;
}

void light() {
	DIFFUSE_LIGHT += max(dot(NORMAL, LIGHT), 0.0) * ATTENUATION * LIGHT_COLOR / PI;
}
