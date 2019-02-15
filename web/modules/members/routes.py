from flask import jsonify, request, url_for
from web.modules.members import bp
from models.user import User


@bp.route('/', methods=['GET', 'POST'])
def index():
    userData = []
    users = User.query.all()

    [userData.append(user.to_dict()) for user in users]

    return jsonify(userData)


@bp.route('/users/')
def users_query():
    keyQuery = request.args.get('key', '')
    return "Query: %s" % keyQuery


@bp.route('/users/<regional>', methods=['GET', 'POST'])
def users_regional(regional):
    if request.method == 'POST':
        pass
    else:
        pass


@bp.route('/user/id/<id>')
def user_id(id):
    return 'User ID: %s' % id
