# Practica 7: Listas Doblemente Enlazadas usando TDD 

## Autor: Carlos Díaz Calzadilla | <alu0101102726@ull.edu.es>

## Objetivo de la practica  

 - Desarrollar una clase Lista mediante la metodologia de desarrollo dirigido por pruebas.
 - Escribir la prueba del metodo.
 - Verificar que la prueba falla.
 - Escribir la implementacion del metodo.
 - Ejecutar las pruebas automatizadas.

## Arbol de directorios
```bash

.
├── bin
│   ├── console
│   └── setup
├── Gemfile
├── Gemfile.lock
├── Guardfile
├── lib
│   ├── p6
│   │   ├── alimento.rb
│   │   ├── lista.rb
│   │   └── version.rb
│   └── p6.rb
├── LICENSE.txt
├── p6.gemspec
├── Rakefile
├── README.md
├── spec
│   ├── p6_spec.rb
│   └── spec_helper.rb
└── tmp


```

## Commits
``` bash
 - - - - - - - PRÁCTICA 7 - - - - - - -
* 9eaa43a (HEAD -> master, desarrollo) Novena edición código: Creando estimar emisiones de metros cuadrados de uso de terreno | CORRECTO
* 70a7c62 Novena Prueba: Prueba para estimar emisiones de metros cuadrados de uso de terreno | ERROR
* 2fc9605 Estimados los geis anuales de todas las dietas | CORRECTO
* 6f4cdf2 Estimados los geis diarios de todas las dietas | CORRECTO
* 87b35d8 Octava edición código: Creando estimar emisiones gei diarias | CORRECTO
* 1d19626 Octava Prueba: Prueba para estimar la emisiones de GEI diarias | ERROR
* 7881b58 Dieta solo carne creada | CORRECTO
* e665636 Dieta vegetaria y vegetaliana creada | CORRECTO
* 3b3dbe5 Dieta española y vasca creada | CORRECTO
* 44c0daa Séptima edición código: Creando eliminar la cola | CORRECTO
* 0952f1a Séptima Prueba: Prueba para eliminar la cola | ERROR
* 6fb124f Sexta edición código: Creando eliminar cabeza | CORRECTO
* 3585a8d Sexta Prueba: Prueba para eliminar la cabeza | ERROR
* 3552b9c Quinta edición código: Creando insertar varios elementos cola | CORRECTO
* 0862361 Quinta edición código: Creando insertar varios elementos cabeza | CORRECTO
* 441ee4a Quinta prueba: Prueba insertar varios elementos | ERROR
* 6227782 Cuarta edición de código: Creando inserción por la cabeza | CORRECTO
* ad485a9 Cuarta Prueba: Prueba insertar un elemento | ERROR
* 6f26d59 Tercera edición código: Creando el getter tail | CORRECTO
* e93f129 Tercera Prueba: Prueba del getter tail | ERROR
* d5e9467 Segunda edición código: Creando el getter head | CORRECTO
* 85d7414 Segunda Prueba: Prueba getter head | ERROR
* 72424c3 Primera edición código: Creando clase lista e inicializando la lista | CORRECTO
* 78bfb42 Primera Prueba: Inicializando Lista | ERROR
* 9c459f4 Herramienta Guard activada y en correcto funcionamiento
* f2687ba Modificando el fichero README.md

 - - - - - - - PRÁCTICA 6 - - - - - - - 
* 412a5e7 Duodécima prueba: Creando impacto ambiental mujer | CORRECTO
* 4b4e044 Undécima prueba y código: Creando impacto ambiental hombre | CORRECTO
* c1c0a21 Décima edición código: Creando el obetener valor energético | CORRECTO
* db751a9 Décima prueba: Prueba de obtención del valor energético | ERROR
* 0f48a42 Novena edición código: Creando el formateari del alimento | CORRECTO
* 40d40f1 Novena prueba: Prueba alimento formateado | ERROR
* 82822b3 Octava edición código: Creando el getter del terreno | CORRECTO
* ee51232 Octava prueba: Prueba del getter del terreno | ERROR
* ad694fe Séptima edición código: Creando el getter del GEI | CORRECTO
* 18d8da7 Séptima prueba: Prueba del getter del GEI | ERROR
* d1c9627 Sexta edición código: Creando el getter de los lípidos | CORRECTO
* 5e5b0a7 Sexta prueba: Prueba del getter de los lípidos | ERROR
* 08a4796 Quinta edición código: Creando el getter de los carbohidratos | CORRECTO
* af5386d Quinta prueba: Prueba del getter de los carbohidratos | ERROR
* f7e0ae7 Cuarta edición código: Creando el getter de las proteinas | CORRECTO
* 9d35163 Cuarta prueba: Prueba del getter de las proteinas | ERROR
* e7b38a3 Tercera edición código: Creando el getter de nombre | CORRECTO
* 2dec373 Tercera prueba: Prueba del getter del nombre | ERROR
* 7517f8c  Segunda prueba: Instanciando Alimento | CORRECTO
* 0b987a7 Primera edición código: Creando la clase Alimento | CORRECTO
* 493087d Primera prueba: Inicializando Alimento | ERROR
* 0c63079 Mejora del README.md
* bf6f110 Elaborando el fichero README.md
* 405529a Actualizando .gitignore
* 08abf72 Creando la estructura bundler

```
