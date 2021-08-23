import React from "react";
import { Link } from "react-router-dom";
import { FaList } from 'react-icons/fa';
import './styles/Navbar.css'



function Navbar({ currentUser, setCurrentUser }) {


    return (

        <nav>
            <Link to='/home' className="title">Rotten Theatre</Link>

            <select className="select-css">
                <option value="All">All</option>
                <option value="Action">Action</option>
                <option value="Animation">Animation</option>
                <option value="Adventure">Adventure</option>
            </select>

            <div className='navButtons'>
                <Link to='/login'>Login</Link>
                <Link to='/signup'>Register</Link>
                <FaList />
            </div>


        </nav>

    )

}

export default Navbar;

