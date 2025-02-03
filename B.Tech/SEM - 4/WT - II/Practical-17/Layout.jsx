import { Outlet } from "react-router-dom";
import Navbar from "./Navbar";

export default function Layout(){
    return(
        <>
            <div className="container">
                <div className="row">
                    <div className="col">
                        <Navbar />
                    </div>
                </div>
                <div className="row">
                    <div className="col">
                        <Outlet />
                    </div>
                </div>
            </div>
        </>
    );
}