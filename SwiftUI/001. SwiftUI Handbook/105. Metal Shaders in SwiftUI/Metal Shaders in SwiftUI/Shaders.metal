//
//  Shaders.metal
//  Metal Shaders in SwiftUI
//
//  Created by mrgsdev on 06.07.2024.
//

#include <metal_stdlib>
using namespace metal;

//[[ stitchable ]] half4 checkerboard(float2 position, half4 currentColor, float size, half4 newColor) {
//    uint2 posInChecks = uint2(position.x / size, position.y / size);
//    bool isColor = (posInChecks.x ^ posInChecks.y) & 1;
//    return isColor ? newColor * currentColor.a : half4(0.0, 0.0, 0.0, 0.0);
//}
//[[ stitchable ]] half4 noise(float2 position, half4 currentColor, float time) {
//    float value = fract(sin(dot(position + time, float2(12.9898, 78.233))) * 43758.5453);
//    return half4(value, value, value, 1) * currentColor.a;
//}

[[ stitchable ]] float2 complexWave(float2 position, float time, float2 size, float speed, float strength, float frequency) {
    float2 normalizedPosition = position / size;
    float moveAmount = time * speed;

    position.x += sin((normalizedPosition.x + moveAmount) * frequency) * strength;
    position.y += cos((normalizedPosition.y + moveAmount) * frequency) * strength;

    return position;
}
