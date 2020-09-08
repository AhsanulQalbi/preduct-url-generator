import db from '../../../config/sequelize';
import "regenerator-runtime/runtime.js";

const Product = db['Product'];
const { setContent, getContentSuccess, getContentFail } = require('../../response/response');
const { simpleOrdering, simplePagination } = require('../../misc/misc');

const create = (req, res) => {
    Product.create({
        name: req.body.name,
        price: req.body.price,
        description: req.body.description,
        discount :  req.body.discount,
        weight : req.body.weight,
        condition : req.body.condition,
        UserId : req.body.UserId
    }).then((product) => {
        setContent(200, { id: product.id , name: product.name, description:  product.description});
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

    Product
        .findAndCountAll(option)
        .then((products) => {
            setContent(200, { products });
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
