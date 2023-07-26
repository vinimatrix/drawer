# drawer
Menu con efecto 3d.

## Configuraciones

en la carpeta components hay un archivo llamado **configuracion.dart**
aqui definiremos la configuracion de colores del componente

## Listado de items de menu
para definir los items del menu debemos configurarlos en el archivo **rive_assets.dart**
en la variable **sideMenus**, este listado contiene las definiciones para los items del menu
- **title:** titulo del menu
- **subtitle:** subtitulo del menu
- **navClass:** es el widget a donde se navegara al hacer tap.
- **icon:** icono del menu

## Wrappers
las paginas deben estar dentro del componente **entry_poin.dart**.(ver linea 74)
la pagina en la variable **pageName** debe tener el mismo texto que el **title** definido en el menu (rive_assets.dart)
