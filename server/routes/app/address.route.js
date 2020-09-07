import express from 'express';
import addressCtrl from '../../controllers/product-cms/address.controller';

const router = express.Router();

router.route('/')
    .get(addressCtrl.list)
    .post(addressCtrl.create);

export default router;