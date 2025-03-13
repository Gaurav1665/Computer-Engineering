import { BrowserRouter, Route, Routes, useNavigate } from "react-router-dom";
import GetAll from "./GetAll";

export default function MockAPICRUD(){

    return(
        <>
            <BrowserRouter>
                <Routes>
                    <Route path="/" element={<GetAll />} />
                    {/* <Route path="/add" element={ <ProductPost /> } /> */}
                </Routes>
            </BrowserRouter>
        </>
    );
}