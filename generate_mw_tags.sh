#py37saas_tags_file='/home/nicolas/.tags/py37saas_tags'
#rm ${py37saas_tags_file}
#touch ${py37saas_tags_file}
#ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f ${py37saas_tags_file} $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")

#cpp_headers_tags_file='/home/nicolas/.tags/cpp_headers_tags'
#rm ${cpp_headers_tags_file}
#touch ${cpp_headers_tags_file}
#ctags -R --c++-kinds=+p --fields=+iaS --extras=+q -f ${cpp_headers_tags_file} /usr/include


p2b_tags_file='/home/nicolas/development/planstobim/tags'
rm '/home/nicolas/development/planstobim/tags'
touch '/home/nicolas/development/planstobim/tags'
ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f '/home/nicolas/development/planstobim/tags' /home/nicolas/development/planstobim/p2b_middleware
ctags -R --c++-kinds=+p --fields=+iaS --extras=+q -f '/home/nicolas/development/planstobim/tags' /home/nicolas/development/planstobim/p2b_core
ctags -R --fields=+iaS --language-force=typescript -f '/home/nicolas/development/planstobim/tags' /home/nicolas/development/planstobim/wisebim-middleware-lib
ctags -R --fields=+iaS --language-force=typescript -f '/home/nicolas/development/planstobim/tags' /home/nicolas/development/planstobim/wisebim-ui
ctags -R --fields=+iaS --language-force=typescript -f '/home/nicolas/development/planstobim/tags' /home/nicolas/development/planstobim/p2b_front


g2b_tags_file='/home/nicolas/development/grid2bim/tags'
rm '/home/nicolas/development/grid2bim/tags'
touch '/home/nicolas/development/grid2bim/tags'
ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f '/home/nicolas/development/grid2bim/tags' /home/nicolas/development/grid2bim/p2b_middleware
ctags -R --c++-kinds=+p --fields=+iaS --extras=+q -f '/home/nicolas/development/grid2bim/tags' /home/nicolas/development/grid2bim/g2b_core
ctags -R --fields=+iaS --language-force=typescript -f '/home/nicolas/development/grid2bim/tags' /home/nicolas/development/grid2bim/wisebim-middleware-lib
ctags -R --fields=+iaS --language-force=typescript -f '/home/nicolas/development/grid2bim/tags' /home/nicolas/development/grid2bim/wisebim-ui
ctags -R --fields=+iaS --language-force=typescript -f '/home/nicolas/development/grid2bim/tags' /home/nicolas/development/grid2bim/g2b_front

