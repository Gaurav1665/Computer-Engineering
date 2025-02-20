import { useState } from "react";

export default function ScientificCalculter(){
    const [equation , setEquation] = useState("");

    return(
        <>
            <div className="container">
                <table className="table table-striped" style={{border: "5px solid black"}} >
                    <thead>
                        <tr>
                            <th scope="col" colSpan={4}><input type="text" disabled value={equation} style={{height:"50px", width:"100%", fontSize:"20px"}} /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td scope="col" colSpan={2}><button onClick={()=>setEquation("")}>CA</button></td>
                            <td scope="col" colSpan={2}><button onClick={()=>setEquation(equation.slice(0, -1))}>C</button></td>
                        </tr>
                        <tr>
                            <td scope="col"><button onClick={()=>setEquation(equation+"**")}>^</button></td>
                            <td scope="col"><button onClick={()=>setEquation(Math.sqrt(equation))}>√</button></td>
                            <td scope="col"><button onClick={()=>setEquation(Math.log(equation))}>log2</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+Math.PI)}>π</button></td>
                        </tr>
                        <tr>
                            <td scope="col"><button onClick={()=>setEquation(Math.sin(equation))}>sin</button></td>
                            <td scope="col"><button onClick={()=>setEquation(Math.cos(equation))}>cos</button></td>
                            <td scope="col"><button onClick={()=>setEquation(Math.tan(equation))}>tan</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"%")}>%</button></td>
                        </tr>
                        <tr>
                            <td scope="col"><button onClick={()=>setEquation(equation+"7")}>7</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"8")}>8</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"9")}>9</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"/")}>/</button></td>
                        </tr>
                        <tr>
                            <td scope="col"><button onClick={()=>setEquation(equation+"4")}>4</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"5")}>5</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"6")}>6</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"*")}>*</button></td>
                        </tr>
                        <tr>
                            <td scope="col"><button onClick={()=>setEquation(equation+"1")}>1</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"2")}>2</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"3")}>3</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"-")}>-</button></td>
                        </tr>
                        <tr>
                            <td scope="col"><button onClick={()=>setEquation(equation+".")}>.</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"0")}>0</button></td>
                            <td scope="col"><button onClick={()=>setEquation(eval(equation))}>=</button></td>
                            <td scope="col"><button onClick={()=>setEquation(equation+"+")}>+</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </>
    );
}