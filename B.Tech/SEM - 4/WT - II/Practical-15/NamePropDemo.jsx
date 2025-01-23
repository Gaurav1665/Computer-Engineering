export default function NamePropsDemo(props){
    return(
        <>
            { props.name!=undefined ? <h1>Hello, {props.name}</h1> : <h1>Hello, Stranger</h1> }
        </>
    );
}