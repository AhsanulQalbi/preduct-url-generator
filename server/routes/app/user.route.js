import express from 'express';
import userCtrl from '../../controllers/product-cms/user.controller';

const router = express.Router();

router.route('/')
    .get(userCtrl.list)
    .post([
        userCtrl.create,
    ]);

export default router;