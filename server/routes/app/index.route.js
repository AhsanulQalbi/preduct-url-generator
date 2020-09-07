import express from 'express';
import productRoutes from './product.route';
import userRoutes from './user.route';
import addressRoutes from './address.route';

const router = express.Router();

router.use('/product', productRoutes);
router.use('/user', userRoutes);
router.use('/address', addressRoutes);

export default router;

