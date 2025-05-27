import unittest
from app import app

class AppTestCase(unittest.TestCase):

    def setUp(self):
        # This sets up a test client before each test
        self.app = app.test_client()

    def test_home(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data.decode(), 'Hello, World!')

    def test_greet(self):
        response = self.app.get('/greet/Akshit')
        self.assertEqual(response.status_code, 200)
        self.assertIn('Hello, Akshit', response.data.decode())

if __name__ == '__main__':
    unittest.main()
