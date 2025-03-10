import { Link, useNavigate } from "react-router-dom";

export default function ProductGetAll(props){
    const setProducts = props.setProducts;
    const products = props.products;
    const navigate = useNavigate();

    return(
        <>
            <Link to="/add" >Add Product</Link>
            <div className="d-flex">
                {
                    products.map((product)=>(
                        <div className="card" style={{width:"300px",margin: "10px"}} key={product.LaptopName}>
                            <div className="card-body">
                                <h5 className="card-title">{ product.LaptopName }</h5>
                                <h6 className="card-subtitle mb-2 text-muted">{ product.LaptopCompany }</h6>
                                <p className="card-text">{ product.LaptopPrice }</p>
                            </div>
                            <div>
                                <button className="m-1" onClick={(e)=>{
                                    setProducts(products.filter((value)=>value.LaptopName != product.LaptopName))
                                }}>Delete</button>
                                <button className="m-1" onClick={(p)=>{
                                    navigate('/add', {state : product})
                                }}>Edit</button>
                            </div>
                        </div>
                    ))
                }
            </div>
        </>
    );
}