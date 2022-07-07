varying vec2 vUv;
uniform float uTime;
uniform sampler2D uTexture;

void main()
{
    float time = uTime * 0.6;
//     Repeating
    vec2 newUv = vUv;
    vec2 repeat = vec2(12.0, 5.0);
//    Twisted
//    newUv += sin(newUv);
    newUv.x += sin(newUv.y * 0.25);
    newUv = fract(newUv * repeat + vec2(time , time));

    vec4 color = texture2D(uTexture , newUv);

    gl_FragColor = color;
}