# Difference Between Inlined and Embedded Shaders

## Shaders Inlined

My vertex and fragment shaders were placed inside `main.cpp`.

- In this method, the GLSL code is stored as a string directly within your C++ file (e.g., `const std::string vertexShader = "#version..."`).
- **Advantage**: Simple to get started — no need for additional files.
- **Disadvantage**: If you change anything in the shader (such as a color or position), you have to modify the C++ file. This means you must recompile the C++ program every time to see the changes, which can slow down development.
<img width="797" height="369" alt="Screenshot 2025-07-15 143227" src="https://github.com/user-attachments/assets/fbd1d023-f654-4867-8508-6635e8f68a86" />

## Shaders Embedded

My vertex and fragment shaders were placed in their own separate files. Then, I used a function to load them at runtime.

- In this method, the GLSL code is stored in external files (e.g., `shader.vert`, `shader.frag`, or `.glsl` files).
- Your C++ program reads these files at runtime (while the program is running) and sends the contents to the GPU for compilation.
- **Advantage**: If you modify the shader, there's no need to recompile your C++ program. Just save the GLSL file and rerun the executable. This greatly speeds up the development cycle and improves code organization.
- **Disadvantage**: Requires a bit more C++ code to read and load the shader files.

<img width="1076" height="217" alt="Screenshot 2025-07-16 091919" src="https://github.com/user-attachments/assets/ad9653a7-9211-42a3-84cd-97800e67e396" />

#

<img width="1900" height="941" alt="Screenshot 2025-07-16 100021" src="https://github.com/user-attachments/assets/697074ef-c548-4be2-9d70-622c61fdd0de" />
