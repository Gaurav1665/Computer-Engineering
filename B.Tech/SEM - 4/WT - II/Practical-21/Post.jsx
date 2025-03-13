import { useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom";

export default function Post(){
    const [data, setData] = useState([]);
    const location = useLocation();
    const user = location.state;
    const navigate = useNavigate();

    useEffect(()=>{
        if(user == null) setData({name:"", email:"", city:""})
        else {
            fetch("https://67c1d88661d8935867e47956.mockapi.io/user/Lab-Practical"+user.id)
            .then(res=>res.json())
            .then(res=>setData(res))
        }
    },[])
    
    return(
        <>
            <table>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" onChange={(e)=>{setData({...data,name:e.target.value})}} value={data.name} /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" onChange={(e)=>{setData({...data,email:e.target.value})}} value={data.email} /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" onChange={(e)=>{setData({...data,city:e.target.value})}} value={data.city} /></td>
                    </tr>
                </tbody>
            </table>
        </>
    );
}