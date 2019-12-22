from pyramid.paster import get_app, setup_logging

class HttpsMiddleware(object):

    def __init__(self, application):
        self.app = application

    def __call__(self, environ, start_response):
        environ['wsgi.url_scheme'] = 'https'
        return self.app(environ, start_response)

ini_path = '/var/www/saas-app/aws.ini'
setup_logging(ini_path)
app = get_app(ini_path, 'main')
application = HttpsMiddleware(app)

