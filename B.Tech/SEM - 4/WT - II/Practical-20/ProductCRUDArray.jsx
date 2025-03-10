import { useEffect, useState } from "react";
import { BrowserRouter, Route, Routes, useNavigate } from "react-router-dom";
import ProductPost from "./ProductPost";
import ProductGetAll from "./ProductGetAll";

const staticData = [
    {
      "LaptopName": "Tasty Wooden Bike",
      "LaptopPrice": "489.00",
      "LaptopCompany": "Funk - Altenwerth",
      "_id": 1
    },
    {
      "LaptopName": "Oriental Frozen Soap",
      "LaptopPrice": "42.00",
      "LaptopCompany": "Howell - O'Reilly",
      "_id": 2
    },
    {
      "LaptopName": "Sleek Cotton Shoes",
      "LaptopPrice": "420.00",
      "LaptopCompany": "Parker, Shanahan and Conroy",
      "_id": 3
    },
    {
      "LaptopName": "Awesome Granite Chips",
      "LaptopPrice": "640.00",
      "LaptopCompany": "Anderson Group",
      "_id": 4
    },
    {
      "LaptopName": "Sleek Wooden Soap",
      "LaptopPrice": "970.00",
      "LaptopCompany": "Jacobi - O'Reilly",
      "_id": 5
    },
    {
      "LaptopName": "Intelligent Soft Car",
      "LaptopPrice": "183.00",
      "LaptopCompany": "Wilkinson - West",
      "_id": 6
    }
]

export default function ProductCRUDArray(){
    const [products, setProducts] = useState([]);

    useEffect(()=>{
        setProducts(staticData);
    },[])

    return(
        <>
            <BrowserRouter>
                <Routes>
                    <Route path="/" element={<ProductGetAll setProducts={setProducts} products={products} />} />
                    <Route path="/add" element={ <ProductPost setProducts={setProducts} products={products}/> } />
                </Routes>
            </BrowserRouter>
        </>
    );
}