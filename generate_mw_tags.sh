rm /home/developer/00_Tools/toruk_tags/mw_tags
ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f /home/developer/00_Tools/toruk_tags/mw_tags /home/developer/01_Middleware/01-toruk
#rm /home/developer/00_Tools/toruk_tags/venv_tags
#ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f /home/developer/00_Tools/toruk_tags/venv_tags $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")
