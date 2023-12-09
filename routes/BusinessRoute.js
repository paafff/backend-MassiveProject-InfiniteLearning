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
  getBusinessByOwnerId,
  getBusinessByParams,
  createSubscriptionBusiness,
  deleteSubscriptionBusiness,
  getBusinessByQueryParams,
} = require('../controllers/Business.js');
const { verifyAuth, verifyAdminSuperuser } = require('../middleware/Verify.js');

const businessRouter = express.Router();

businessRouter.post(
  '/business',
  verifyAuth,
  verifyAdminSuperuser,
  createBusiness
);
businessRouter.get('/business', getBusiness);
businessRouter.get('/business/:uuid', getBusinessById);
businessRouter.patch('/business/:uuid', updateBusiness);
businessRouter.delete('/business/:uuid', deleteBusiness);
businessRouter.get('/barbershop', getBarbeshopBusiness);
businessRouter.get('/salon', getSalonBusiness);
businessRouter.get('/subscription', getSubscriptionBusiness);
businessRouter.get('/my-business', verifyAuth, getBusinessByOwnerId);
businessRouter.get('/business-search/:searchParams', getBusinessByParams);
businessRouter.get('/business-search', getBusinessByQueryParams);

businessRouter.patch(
  '/business-subscription/create/:uuid',
  createSubscriptionBusiness
);
businessRouter.patch(
  '/business-subscription/delete/:uuid',
  deleteSubscriptionBusiness
);

module.exports = businessRouter;
