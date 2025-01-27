export default function Mapdemo(){
    const arr = ['a','b','c','d','e','f','g','h','i','j']
    return(
        <>
            { arr.map((value) => <p>{ value }</p>) }
        </>
    );
}