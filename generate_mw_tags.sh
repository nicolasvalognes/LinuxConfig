#py37saas_tags_file='/home/nicolas/.tags/py37saas_tags'
#rm ${py37saas_tags_file}
#touch ${py37saas_tags_file}
#ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f ${py37saas_tags_file} $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")

#cpp_headers_tags_file='/home/nicolas/.tags/cpp_headers_tags'
#rm ${cpp_headers_tags_file}
#touch ${cpp_headers_tags_file}
#ctags -R --c++-kinds=+p --fields=+iaS --extras=+q -f ${cpp_headers_tags_file} /usr/include


p2b_tags_file='/home/nicolas/workspace/plans2bim/tags'
p2b_src='/home/nicolas/workspace/plans2bim/'
rm ${p2b_tags_file}
touch ${p2b_tags_file}
chmod 777 ${p2b_tags_file}
ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f ${p2b_tags_file} ${p2b_src}/p2b_middleware
ctags -R --c++-kinds=+p --fields=+iaS --extras=+q -f ${p2b_tags_file} ${p2b_src}/p2b_core
ctags -R --fields=+iaS --language-force=typescript -f ${p2b_tags_file} ${p2b_src}/wisebim-middleware-lib
ctags -R --fields=+iaS --language-force=typescript -f ${p2b_tags_file} ${p2b_src}/wisebim-ui
ctags -R --fields=+iaS --language-force=typescript -f ${p2b_tags_file} ${p2b_src}/p2b_front


g2b_tags_file='/home/nicolas/workspace/grid2bim/tags'
g2b_src='/home/nicolas/workspace/grid2bim/'
rm ${g2b_tags_file}
touch ${g2b_tags_file}
chmod 777 ${g2b_tags_file}
ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f ${g2b_tags_file} ${g2b_src}/p2b_middleware
ctags -R --c++-kinds=+p --fields=+iaS --extras=+q -f ${g2b_tags_file} ${g2b_src}/g2b_core
ctags -R --fields=+iaS --language-force=typescript -f ${g2b_tags_file} ${g2b_src}/wisebim-middleware-lib
ctags -R --fields=+iaS --language-force=typescript -f ${g2b_tags_file} ${g2b_src}/wisebim-ui
ctags -R --fields=+iaS --language-force=typescript -f ${g2b_tags_file} ${g2b_src}/g2b_front

