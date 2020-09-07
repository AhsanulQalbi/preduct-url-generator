import express from 'express';
import productCtrl from '../../controllers/product-cms/product.controller';

const router = express.Router();

router.route('/')
    .get(productCtrl.list)
    .post(productCtrl.create);

export default router;