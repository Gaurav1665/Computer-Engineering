import { useState } from "react";
import { useNavigate } from "react-router-dom";

export default function ProductPost(props){
    const setProducts = props.setProducts;
    const products = props.products;

    const [data, setData] = useState({LaptopName:"",LaptopCompany:"",LaptopPrice:""});
    const naviagte = useNavigate();
    return(
        <>
            <table>
                <tbody>
                    <tr>
                        <td>Product Name</td>
                        <td><input type="text" onChange={(e)=>{setData({...data,LaptopName:e.target.value})}} value={data.LaptopName} /></td>
                    </tr>
                    <tr>
                        <td>Product Company</td>
                        <td><input type="text" onChange={(e)=>{setData({...data,LaptopCompany:e.target.value})}} value={data.LaptopCompany} /></td>
                    </tr>
                    <tr>
                        <td>Product Price</td>
                        <td><input type="number" onChange={(e)=>{setData({...data,LaptopPrice:e.target.value})}} value={data.LaptopPrice} /></td>
                    </tr>
                    <tr>
                        <td colSpan={2}>
                            <button className="m-1" onClick={()=>{
                                setProducts([...products,data])
                                naviagte("/")
                            }} >Add Product</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </>
    );
}