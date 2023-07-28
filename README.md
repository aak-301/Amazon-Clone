# Amazon Clone

Build a amazon clone using Flutter and Nodejs

## Setup

- Backend
```
create a mongodb and a connection url in server/index.js
$ cd server
$ npm install
$ npm run dev
```

- Forntend
```
install flutter
Add cloudinary cloudName, uploadPreset in lib/featues/admin/services/admin_services.dart

$ flutter run
```

## Tools Used

- Backend:
    Node.Js
    Express

- Database:
    MongoDb

- Frontend:
    Flutter

- Hoting:
    Vercel

- CDN(for image upload):
    Cloudinary


## Features

* **Role based Authentication** - Where one can register both as admin and a customer.
* **Search Product** - A seamless experience for searching any produc.
* **View and Rate Product** - You can see the product details and rate it depending on your view/experience.
* **Order and Payment** - A product can be added to cart and you can use Gpay for checking out.
* **Order Status** - Customer can get the update of their order in order section. Admin can updat on each step or a customers order.
* **Deal of the Day** - Deal of the Day depends on the most rated product by users.
* **Product Listing and Analytics(Admin)** - Admin can see the orders created on their product listed and als the analytics on the type of product he lists out.

## My Learning 

* How to create an api on node and connect it to futter.
* A better approach for api error handling in flutter,
* Image upload in cloudinary through flutter.
* Payment integration in flutter.
* Rating system in app.


## Future Scopes

* Suggested Products
* A good review system and chat for QnA.
* Converting a consumer to seller forth and back.
* Abetter approach for Deal of the Day product
* Notification(Firebase) and Deeplinking(Branch.io)


## Contribution

* Clone the project and follow setup stps and run the app.
* Create a new branch and add changes and create a PR for that change.

## App Demo


https://github.com/aak-301/Amazon-Clone/assets/76422079/4831f6d5-45d1-4193-b0a9-070b2977a84d

Gay Payment in App:

<img src="https://github.com/aak-301/Amazon-Clone/assets/76422079/0213e6cb-056b-4d02-a735-d89c496d4ce5" width="150" height="300">


