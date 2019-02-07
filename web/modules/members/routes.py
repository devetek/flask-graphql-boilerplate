from web.modules.members import bp


@bp.route('/', methods=['GET', 'POST'])
def index():
    return 'Members Dashboard API'


@app.route('/users/')
def users_query():
    keyQuery = request.args.get('key', '')
    return "Query: %s" % keyQuery


@app.route('/users/<regional>', methods=['GET', 'POST'])
def users_regional(regional):
    if request.method == 'POST':
        pass
    else:
        pass


@app.route('/user/id/<id>')
def user_id(id):
    return 'User ID: %s' % id
