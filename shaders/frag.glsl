#version 330 core

in vec3 fragNormal;
out vec4 outColor;
out vec4 outColor2;

void main(){
    vec3 N = abs(normalize(fragNormal));
    vec3 N2 = (fragNormal+1.0)/2;
    outColor = vec4(N, 1.0);
    outColor2 = vec4(N2,1.0);
    // OR
    //outColor = vec4( 0.5f * ( fragNormal + 1.0f ), 1.0f );
}