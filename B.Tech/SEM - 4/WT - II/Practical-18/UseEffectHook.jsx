import { useState, useEffect } from 'react'

export default function UseEffectHook(){
    const [count, setCount] = useState(0);
    useEffect(()=>{
        console.log("hello");        
    },[count])
    return(
        <>
            <h1>{ count }</h1>
            <button onClick={ () => setCount(count+1) }>Increment</button>
        </>
    );
}