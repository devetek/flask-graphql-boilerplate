from flask import request, session, render_template


def routes(app):
    @app.route('/')
    def index():
        return render_template('index.html')

    @app.route('/ws-client')
    def ws_client():
        return render_template('ws_client.html')

    @app.route('/users/')
    def users_query():
        keyQuery = request.args.get('key', '')
        return "Query: %s" % keyQuery

    @app.route('/user/id/<id>')
    def user_id(id):
        return 'User ID: %s' % id

    @app.route('/user/name/<name>')
    def user_name(name=None):
        return render_template('user.html', name=name)

    @app.route('/users/<regional>', methods=['GET', 'POST'])
    def users(regional):
        if request.method == 'POST':
            pass
        else:
            pass

    @app.errorhandler(404)
    def page_404(error):
        return render_template('error_404.html'), 404

    @app.errorhandler(500)
    def page_500(error):
        return render_template('error_500.html'), 500
