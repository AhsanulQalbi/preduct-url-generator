import db from '../../../config/sequelize';
import "regenerator-runtime/runtime.js";


const User = db['User'];
const { setContent, getContentSuccess, getContentFail } = require('../../response/response');
const { simpleOrdering, simplePagination } = require('../../misc/misc');


const create = (req, res) => {
    console.log(req.body)
    User.create({
        fullname: req.body.fullname,
        email: req.body.email,
        phone: req.body.phone
    }).then((user) => {
        setContent(200, { id: user.id, fullname: user.fullname, email: user.email,  phone: user.phone });
        return res.status(200).json(getContentSuccess());
    }).catch((e) => {
        setContent(400, e);
        return res.status(400).json(getContentFail(e));
    });

};

const list = (req, res) => {
    const ordering = simpleOrdering(req);
    const pagination = simplePagination(req);

    const option = {
        order: [
            [ordering.orderBy, ordering.orderType],
        ],
    };

    if (req.query.pagination !== 'false') {
        Object.assign(option, {
            offset: pagination.page,
            limit: pagination.row,
        });
    }

    User
        .findAndCountAll(option)
        .then((users) => {
            setContent(200, { users });
            return res.status(200).json(getContentSuccess());
        })
        .catch((e) => {
            setContent(400, e);
            return res.status(400).json(getContentFail(e));
        });
};


export default {
    create,
    list,
};
