// const express = require('express');
// const {
//   createBusiness,
//   getBusiness,
//   getBusinessById,
//   updateBusiness,
//   deleteBusiness,
//   getBarbeshopBusiness,
//   getSalonBusiness,
//   getSubscriptionBusiness,
// } = require('../controllers/Business');

// const businessRouter = express.Router();

// businessRouter.post('/business', createBusiness);
// businessRouter.get('/business', getBusiness);
// businessRouter.get('/business/:uuid', getBusinessById);
// businessRouter.patch('/business/:uuid', updateBusiness);
// businessRouter.delete('/business/:uuid', deleteBusiness);
// businessRouter.get('/business/barbershop', getBarbeshopBusiness);
// businessRouter.get('/business/salon', getSalonBusiness);
// businessRouter.get('/business/subscription', getSubscriptionBusiness);

// module.exports = businessRouter;




const express = require('express');
const {
  createBusiness,
  getBusiness,
  getBusinessById,
  updateBusiness,
  deleteBusiness,
  getBarbeshopBusiness,
  getSalonBusiness,
  getSubscriptionBusiness,
} = require('../controllers/Business');

const businessRouter = express.Router();

businessRouter.post('/business', createBusiness);
businessRouter.get('/business', getBusiness);
businessRouter.get('/business/:uuid', getBusinessById);
businessRouter.patch('/business/:uuid', updateBusiness);
businessRouter.delete('/business/:uuid', deleteBusiness);
businessRouter.get('/barbershop', getBarbeshopBusiness);
businessRouter.get('/salon', getSalonBusiness);
businessRouter.get('/subscription', getSubscriptionBusiness);

module.exports = businessRouter;
