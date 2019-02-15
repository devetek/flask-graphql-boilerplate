from flask import jsonify, request, url_for
from web.modules.members import bp
from models.user import User


@bp.route('/', methods=['GET', 'POST'])
def index():
    userData = []
    users = User.query.all()

    if users != None:
        [userData.append(user.to_dict()) for user in users]

    return jsonify(userData)


@bp.route('/users/')
def users_query():
    userData = {}
    usernameQuery = request.args.get('username', '')
    user = User.query.filter_by(username=usernameQuery).first()

    if user != None:
        userData = user.to_dict()

    return jsonify(userData)


@bp.route('/users/<regional>', methods=['GET', 'POST'])
def users_regional(regional):
    if request.method == 'POST':
        pass
    else:
        pass


@bp.route('/user/id/<int:id>')
def user_id(id):
    userData = {}
    user = User.query.filter_by(user_id=id).first()

    if user != None:
        userData = user.to_dict()

    return jsonify(userData)
