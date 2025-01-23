export default function EventTrigger(props){
    return(
        <>
            <button onClick={ PrintHelloWorld }>Print Hello World</button>
        </>
    );
}

function PrintHelloWorld(){
    console.log("Hello World!");
}