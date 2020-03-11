import model, { Sequelize } from '../models';

const { Message } = model;

class Messages {
    static sendMessage(req, res) {
        const { message, status } = req.body
        const { userId } = req.params
        return Message
            .create({
                message,
                status,
                userId
            })
            .then(messageData => res.status(201).send({
                message: `Your message: ${message} has been sent`,
                messageData
            }))
    }
    static readMessage(req, res) {
        return Message
            .findAll()
            .then(messages => res.status(200).send(messages));
    }
    static findMessage(req, res) {
        const Op = Sequelize.Op
        const { message } = req.body
        return Message
            .findAll({
                where: {
                    message: {
                        [Op.like]: '%' + message + '%'
                    }
                }
            })
            .then(messages => res.status(200).send(messages));
    }
    static readInbox(req, res) {
        const Op = Sequelize.Op
        return Message
            .findAll({
                where: {
                    status: {
                        [Op.eq]: 0
                    }
                }
            })
            .then(messages => res.status(200).send(messages));
    }
    static readSent(req, res) {
        const Op = Sequelize.Op
        return Message
            .findAll({
                where: {
                    status: {
                        [Op.eq]: 1
                    }
                }
            })
            .then(messages => res.status(200).send(messages));
    }
}

export default Messages