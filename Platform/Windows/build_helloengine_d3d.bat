fxc /T vs_5_0 /Zi /Fo copy.vso copy.vs
fxc /T ps_5_0 /Zi /Fo copy.pso copy.ps

clang-cl -I./DirectXMath/Inc -c -Z7 -o helloengine_d3d.obj helloengine_d3d.cpp
link -debug user32.lib d3d11.lib d3dcompiler.lib helloengine_d3d.obj