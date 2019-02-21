from flask_restful import abort, Resource
from web.modules.book import parser, BOOKS


class Detail(Resource):

    def get(self, book_id):
        """[to get book by id]

        Arguments:
          book_id {[string]} -- [book id]

        Returns:
          [object] -- [How To Test: curl http://localhost:5000/book/book2]
        """

        self.abort_if_todo_doesnt_exist(book_id)
        return BOOKS[book_id]

    def delete(self, book_id):
        """[delete book by id]

        Arguments:
          book_id {[string]} -- [book id]

        Returns:
          [string] -- [How To Test: curl http://localhost:5000/book/book2 -X DELETE -v]
        """

        self.abort_if_todo_doesnt_exist(book_id)
        del BOOKS[book_id]
        return '', 204

    def put(self, book_id):
        """[update book id]

        Arguments:
          book_id {[string]} -- [book id]

        Returns:
          [object] -- [How To Test: curl http://localhost:5000/book/book2 -d "author=Homepes" -X PUT -v]
        """

        args = parser.parse_args()
        author = {'author': args['author']}
        BOOKS[book_id] = author
        return author, 201

    def abort_if_todo_doesnt_exist(self, book_id):
        """[default error response]

        Arguments:
          book_id {[string]} -- [book id]
        """

        if book_id not in BOOKS:
            abort(404, message="Todo {} doesn't exist".format(book_id))
