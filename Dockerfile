# Dockerfile del repositorio base.
# Contiene cinco malas practicas deliberadas. Cada una lleva su numero en la
# linea anterior. Corregirlas es el bloque A1 de la guia del laboratorio.

# defecto 1, corregido con versión fija
FROM public.ecr.aws/lambda/nodejs:24.2026.09.24.14    

# defecto 2, corregido subiendo solo lo de src
COPY src/ .

# defecto 3, corregido tomando del archivo de lock con ci
RUN npm ci

# defecto 4
# No se define la contraseña aquí
# Se podría recibir al ejecutar el contenedor

# defecto 5, corregido sin instalar paquetes innecesarios

CMD ["src/handler.handler"]
