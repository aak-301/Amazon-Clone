const express = require("express");
const admin = require("../middleware/admin");
const Product = require("../models/product");
const adminRouter = express.Router();

// Add Product
adminRouter.post("/admin/add-product", admin, async (req, res) => {
  try {
    const { name, description, quantity, images, category, price } = req.body;
    let product = new Product({
      name,
      description,
      images,
      quantity,
      price,
      category,
    });

    product = await product.save;
    res.json(product);
  } catch (e) {
    res.status(500).json({
      error: e.message,
    });
  }
});
