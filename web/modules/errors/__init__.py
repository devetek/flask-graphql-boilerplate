from flask import Blueprint
import web.modules.errors.handlers

errors_bp = Blueprint('errors', __name__)
