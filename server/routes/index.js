import Users from '../controllers/user';
import Messages from '../controllers/message';

export default (app) => {

    app.get('/api', (req, res) => res.status(200).send({
        message: 'Welcome to the Message App API!',
    }));

    app.post('/api/users', Users.registerUser); // API route for user to register
    app.get('/api/display', Users.displayUser) // API route for display user
    app.post('/api/:userId/send', Messages.sendMessage); // API route for user to send message
    app.get('/api/read', Messages.readMessage); // API route for user to get all message
    app.get('/api/find', Messages.findMessage); // API route for user to find a message
    app.get('/api/inbox', Messages.readInbox); // API route for use to read Inbox
    app.get('/api/sent', Messages.readSent); // API route for use to read Sent
};