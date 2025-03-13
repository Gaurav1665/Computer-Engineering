import { useEffect, useState } from "react";


export default function GetAll(){
    const [data, setData] = useState([]);

    const fetchData = async()=>{
        const response = await fetch("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical").then(res=>res.json());
        setData(response);
        console.log(data)
    }
    
    useEffect(()=>{
        fetchData()
    },[])

    
    return(
        <>
            {
                data.map((ele)=>{
                    <div className="card" style={{width:"300px",margin: "10px"}} key={ele.id}>
                        <div className="card-body">
                            <h5 className="card-title">{ ele.name }</h5>
                            <h6 className="card-subtitle mb-2 text-muted">{ ele.email }</h6>
                            <p className="card-text">{ ele.city }</p>
                        </div>
                        <div>
                            <button className="m-1" onClick={(e)=>{
                                fetch("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical"+ele.id,{
                                    method:"DELETE"
                                })
                                .then()
                                .then()
                            }}>Delete</button>
                            <button className="m-1" onClick={(p)=>{
                            }}>Edit</button>
                        </div>
                    </div>
                })
            }
        </>
    );
}