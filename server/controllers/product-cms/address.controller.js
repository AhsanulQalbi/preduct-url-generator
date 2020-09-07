import db from '../../../config/sequelize';
import "regenerator-runtime/runtime.js";

const Address = db['Address'];
const { setContent, getContentSuccess, getContentFail } = require('../../response/response');
const { simpleOrdering, simplePagination } = require('../../misc/misc');

const create = (req, res) => {
    Address.create({
        street: req.body.street,
        city: req.body.city,
        province: req.body.province,
        country : req.body.country,
        postal_code : req.body.postal_code,
        UserId : req.body.UserId
    }).then((address) => {
        setContent(200, { id: address.id , street: address.street, description:  address.city,
            province: address.province , country: address.country, postal_code:  address.postal_code });
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

    Address
        .findAndCountAll(option)
        .then((addresses) => {
            setContent(200, { addresses });
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
