import { BrowserRouter, Routes, Route, Link } from 'react-router-dom'
import Layout from './Layout';
import Home from './Home';
import About from './About';
import Contact from './Contact';
import Product from './Product';
import Category from './Category';

export default function RouteDemo(){
    return(
        <>
            <BrowserRouter>
                <Routes>
                    <Route path='/' element={<Layout />}>
                        <Route index element={<Home />}></Route>
                        <Route path='/About' element={<About />}></Route>
                        <Route path='/Contact' element={<Contact />}></Route>
                        <Route path='/Product' element={<Product />}></Route>
                        <Route path='/Category' element={<Category />}></Route>
                    </Route>
                </Routes>
            </BrowserRouter>
        </>
    );
}