import { useEffect, useState } from "react";
import { BrowserRouter, Route, Routes, useNavigate } from "react-router-dom";
import GetALL from "./productGetAll";

export default function ProductCRUDArray(){
    const [products, setProducts] = useState([]);

    useEffect(()=>{
        setProducts([
          {
            "createdAt": "2024-11-28T01:43:24.487Z",
            "LaptopName": "Tasty Wooden Bike",
            "LaptopImage": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1102.jpg",
            "LaptopPrice": "489.00",
            "LaptopCompany": "Funk - Altenwerth",
            "LaptopRamSize": 8293,
            "LaptopSSDSize": 61135,
            "_id": 1
          },
          {
            "createdAt": "2024-11-28T01:22:07.004Z",
            "LaptopName": "Oriental Frozen Soap",
            "LaptopImage": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/766.jpg",
            "LaptopPrice": "42.00",
            "LaptopCompany": "Howell - O'Reilly",
            "LaptopRamSize": 3808,
            "LaptopSSDSize": 4379,
            "_id": 2
          },
          {
            "createdAt": "2024-11-28T03:43:17.528Z",
            "LaptopName": "Sleek Cotton Shoes",
            "LaptopImage": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1187.jpg",
            "LaptopPrice": "420.00",
            "LaptopCompany": "Parker, Shanahan and Conroy",
            "LaptopRamSize": 44824,
            "LaptopSSDSize": 1661,
            "_id": 3
          },
          {
            "createdAt": "2024-11-27T10:09:09.131Z",
            "LaptopName": "Awesome Granite Chips",
            "LaptopImage": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1093.jpg",
            "LaptopPrice": "640.00",
            "LaptopCompany": "Anderson Group",
            "LaptopRamSize": 3300,
            "LaptopSSDSize": 92197,
            "_id": 4
          },
          {
            "createdAt": "2024-11-27T22:18:24.078Z",
            "LaptopName": "Sleek Wooden Soap",
            "LaptopImage": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/904.jpg",
            "LaptopPrice": "970.00",
            "LaptopCompany": "Jacobi - O'Reilly",
            "LaptopRamSize": 9075,
            "LaptopSSDSize": 23271,
            "_id": 5
          },
          {
            "createdAt": "2024-11-27T18:10:36.891Z",
            "LaptopName": "Intelligent Soft Car",
            "LaptopImage": "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/978.jpg",
            "LaptopPrice": "183.00",
            "LaptopCompany": "Wilkinson - West",
            "LaptopRamSize": 28652,
            "LaptopSSDSize": 67976,
            "_id": 6
          }]);
    },[])

    return(
        <>
            <BrowserRouter>
                <Routes>
                    <Route path="/" element={<GetALL products={products} />} />
                    <Route path="/add" element={ <Post/> } />
                </Routes>
            </BrowserRouter>
        </>
    );
}


function AddEditProduct(props){
    return(
        <>
            <table>
                <tbody>
                    <tr>
                        <td>Product Name</td>
                        <td><input type="text" value={ props!=undefined ? props.product.LaptopName : "" } /></td>
                    </tr>
                    <tr>
                        <td>Product Company</td>
                        <td><imput type="text" value={props.product.LaptopCompany} /></td>
                    </tr>
                    <tr>
                        <td>Product Price</td>
                        <td><imput type="number" value={props.product.LaptopPrice} /></td>
                    </tr>
                </tbody>
            </table>
        </>
    );
}