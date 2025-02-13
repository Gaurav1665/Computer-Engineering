import { useEffect, useState } from 'react'

export default function Extra(){
    const [count, setCount] = useState(5);
    
    // return(
    //     <>
    //         <h1>{ count }</h1>
    //         <button onClick={ () => setCount(count+1) }>+1</button>
    //         <button onClick={ () => setCount(count-1) }>-1</button>
    //         <button onClick={ () => setCount(0) }>clear</button>
    //         <button onClick={ () => setCount(count+5) }>+5</button>
    //         <button onClick={ () => setCount(count-5) }>-5</button>
    //     </>
    // );
    

    useEffect(()=>{
        const interval = setInterval(() => {
            count >= 0 ? setCount((count) => count - 1) : clearInterval(this);
        }, 1000);
    },[])

    return(
        <>
            { count >= 0 ? <h1>{ count }</h1> : <h1>Time is Up!!</h1>}
        </>
    );
    
}