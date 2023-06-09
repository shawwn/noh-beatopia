// (C)2008 S2 Games
// terrain_depth.vsh
// 
// Terrain
//=============================================================================

//=============================================================================
// Uniform variables
//=============================================================================
uniform vec4    vColor;
uniform float   fWorldTileSize;

//=============================================================================
// Varying variables
//=============================================================================

//=============================================================================
// Vertex attributes
//=============================================================================
attribute float a_fHeight;
attribute vec4  a_vData0;
attribute vec4  a_vData1;

//=============================================================================
// Vertex Shader
//=============================================================================
void main()
{
    vec2 vTile = vec2(a_vData0.w, a_vData1.w);

    gl_Position    = gl_ModelViewProjectionMatrix * vec4(vec3(vTile * fWorldTileSize, a_fHeight), 1.0);
}
