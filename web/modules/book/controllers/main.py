from flask_restful import Resource
from web.modules.book import parser, BOOKS


class Main(Resource):

    def get(self):
        """[get all books]

        Returns:
          [object] -- [How To Test: curl http://localhost:5000/book]
        """
        return BOOKS

    def post(self):
        """[add new book]

        Returns:
        [object] -- [How To Test: curl http://localhost:5000/book -d "author=Kuma" -X POST -v]
        """
        args = parser.parse_args()
        book_id = int(max(BOOKS.keys()).lstrip('book')) + 1
        book_id = 'book%i' % book_id
        BOOKS[book_id] = {'author': args['author']}
        return BOOKS[book_id], 201
