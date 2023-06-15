# Shader Programming No.1

<!-- TOC -->

- [Shader Programming No.1](#shader-programming-no1)
- [Shaderとはなにか？](#shaderとはなにか)

<!-- /TOC -->

<script async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=TeX-AMS_CHTML"></script>
<script type="text/x-mathjax-config">
 MathJax.Hub.Config({
 tex2jax: {
 inlineMath: [["\\(","\\)"] ],
 displayMath: [ ['$$','$$'], ["\\[","\\]"] ]
 }
 });
</script>

コンピュータグラフィックスやゲーム，コンセプトアートなどデジタルアートの作品を見る機会が多くあると思う．それらの作品を見て，どのように作っているのだろう気になることがあるかと思う．

こういった作品を作成するにはいろんな方法がある．例えば，[Processing](https://processing.org/ )や[Unity](https://unity.com/ )，[UnrealEngine](https://www.unrealengine.com/ )，[Maya](https://www.autodesk.co.jp/products/maya/overview?term=1-YEAR&tab=subscription )，[Blender](https://www.blender.org/ )などがある．

この授業で扱うShaderはクリエイティブなコーディングに関して最も強力で汎用性の高いものの1つかもしれない．Shaderは，デジタル時代の絵筆のようなものである．この授業では，Shaderと数学的関数とアルゴリズムを使ってピクセルを操作し，視覚効果を生み出すことを目的とする．



# Shaderとはなにか？

 Shaderとは，グラフィックカード上で動作する小さなプログラムのことで，キャンバス上の各ピクセルの色を計算する役割を担っている．Shaderは，現在のピクセル位置などの入力を受け取り，それを使って最終的な1つの色を計算することで動作する．この授業で扱うのは，GLSLでこれは，[OpenGL](https://www.opengl.org/ )の一部であり， **OpenGL Shader language** を省略して「**GLSL**」と表記する．同じようなもので，**HLSL**がある．これは，**High Level Shading language**の略であり，[Microsoft](https://www.microsoft.com/ )が提供している[Direct3D(DirectX)](https://visualstudio.microsoft.com/ja/vs/features/directx-game-dev/ )で使われるShading言語である．

つまり，2次元の座標，XとYで表されるピクセル位置を，コンピュータグラフィックスでは赤，緑，青のチャンネルで表される色にマッピングする数学関数とみなすことができる．この関数は， 画面上のすべてのピクセルに対して並列に計算する．シェーダは1秒間に数百万回の計算を行い，圧倒的でリアルタイムなグラフィクスを実現することができるのである．