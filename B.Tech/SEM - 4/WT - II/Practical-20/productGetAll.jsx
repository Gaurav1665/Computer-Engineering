export default function GetALL(props){
    return(
        <>
            <div className="d-flex">
                {
                    props.products.map((product)=>(
                        <div className="card" style={{width:"300px",margin: "10px"}}>
                            <div className="card-body">
                                <h5 className="card-title">{ product.LaptopName }</h5>
                                <h6 className="card-subtitle mb-2 text-muted">{ product.LaptopCompany }</h6>
                                <p className="card-text">{ product.LaptopPrice }</p>
                            </div>
                            <div>
                                <button className="m-1" onClick={(e)=>{
                                    setProducts(products.filter((value)=>(value._id != product._id)))
                                }}>Delete</button>
                                <button className="m-1" onClick={()=>{}}>Edit</button>
                            </div>
                        </div>
                    ))
                }
            </div>
        </>
    );
}