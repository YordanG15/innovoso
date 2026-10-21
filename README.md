# El Peso Invisible: plataforma del experimento social

Web app para la dinámica de grupos de 6 personas (Innovación Social, UCSC).

- `index.html`: lo que ven los participantes al escanear el QR (escribir el peso, esperar, evaluar).
- `panel.html`: tu panel de facilitador (QR, fases, pesos en vivo, evaluación, CSV).
- `config.js`: tus claves de Supabase y tu PIN.
- `setup.sql`: crea tu base de datos.
- `estilos.css`: identidad gráfica (Montserrat, #D12421 y #646567).

## Puesta en marcha (≈15 minutos)

1. **Base de datos:** crea un proyecto gratis en supabase.com. En *SQL Editor* pega y ejecuta `setup.sql`.
2. **Claves:** en *Project Settings > API* copia la *Project URL* y la clave *anon public*, y pégalas en `config.js`. Cambia también el PIN.
3. **Publicar:** sube la carpeta a GitHub Pages, Netlify (arrastrar y soltar) o Vercel. Necesitas una URL pública con HTTPS para que el QR funcione en los celulares.
4. **Probar (marcha blanca):** abre `https://TU-URL/panel.html`, ingresa el PIN, escanea el QR con tu celular y recorre las 4 fases con 3 o 4 conocidos. Esto es tu testeo e iteración de la Etapa 1.

## Día de la ejecución

1. Abre el panel en la tablet. Cada grupo de 6 es una **sesión** (botón "+ Nueva"); el QR y el código cambian.
2. Fase **Escribir**: escanean y escriben. Verás los pesos y los patrones aparecer.
3. Lee los patrones en voz alta, sin nombres, y pasa a **Diálogo**.
4. Pasa a **Evaluar**: sus celulares muestran la escala de conexión y alivio.
5. **Cerrar** y siguiente grupo. Con 5 grupos de 6 llegas a 30 participantes (meta: 25).
6. Al final, "Descargar CSV" te da todos los datos para la Etapa 4.

## Notas importantes

- **Privacidad:** no se guarda nombre ni correo. Los textos son libres, así que si alguien escribe algo delicado, sé cuidadoso al leerlo en voz alta. Los datos opcionales (carrera, año) sirven para demostrar la diversidad exigida en la pauta.
- **Seguridad:** el PIN solo protege la interfaz del panel. Las políticas del `setup.sql` son abiertas para que funcione sin cuentas; para un experimento de un día es suficiente. No guardes datos sensibles.
- **Si algún participante se angustia** durante la dinámica, tenla preparada: ten a mano los canales de apoyo de bienestar estudiantil de tu universidad.
- **Marca UCSC:** la interfaz usa los colores y la tipografía de la pauta. Si agregas el logo, hazlo con el archivo oficial, sin deformarlo ni cambiar sus proporciones (Normas Gráficas UCSC 2024).
