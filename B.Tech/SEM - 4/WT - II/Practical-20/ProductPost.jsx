import { useEffect, useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";

export default function ProductPost(props){
    const location = useLocation();
    const setProducts = props.setProducts;
    const products = props.products;
    const product = location.state;
    const navigate = useNavigate();
    

    const [data, setData] = useState({});

    useEffect(()=>{
        setData(product == null ? {LaptopName:"",LaptopCompany:"",LaptopPrice:"",_id:products.length+1}: product)
    },[]);

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
                            { product==null 
                              ? <button className="m-1" onClick={()=>{
                                    setProducts([...products,data])
                                    navigate("/")
                                }} >Add Product</button>
                              : <button className="m-1" onClick={()=>{

                                    const updatedProduct = products.map((e)=>{
                                        
                                        if(e._id == product._id){
                                            return {...e,...data}
                                        }
                                        else{
                                            return {...e}
                                        }
                                    })
                                    
                                    
                                    setProducts(updatedProduct)
                                    navigate("/")
                                }} >Update Product</button>
                            }
                        </td>
                    </tr>
                </tbody>
            </table>
        </>
    );
}