// (C)2009 S2 Games
// post.vsh
// 
// ...
//=============================================================================

//=============================================================================
// Varying variables
//=============================================================================

//=============================================================================
// Vertex Shader
//=============================================================================
void main()
{
    gl_Position       = gl_ModelViewProjectionMatrix * vec4(gl_Vertex.xy, 0.0, 1.0);
    gl_TexCoord[0].xy = gl_MultiTexCoord0.xy;
}