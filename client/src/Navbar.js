import React from "react";
import { Link } from "react-router-dom";
import { FaList } from 'react-icons/fa';
import { useHistory } from "react-router-dom";
import './styles/Navbar.css'
import {RiMovie2Line} from "react-icons/ri";
import {GiPopcorn} from "react-icons/gi";



function Navbar({ currentUser, setCurrentUser }) {

    const history = useHistory()

    function goTologinPage() {
        history.push('/login')
    }

    function goToSignupPage() {
        history.push('/signup')
    }

    function logout() {
        setCurrentUser(null);
        history.push('/')
    }

    return (

        <nav>
        
           <Link to='/' className="nav-icon"> <GiPopcorn/> </Link> 
              

            <select className="select-css">
                <option value="All">Sort By</option>
                <option value="Action">Highest Rated Movies</option>
                <option value="Animation">Lowest Rated movies</option>
                {/* <option value="Adventure">Newest Movies</option> */}
                {/* <option value="Adventure">Oldest Movies</option> */}
            </select>

            <div className='navButtons'>    
                {!currentUser ? <button className="button" onClick={goToSignupPage}>Register</button> : ""}
                {!currentUser ? <button className="button" onClick={goTologinPage}>Login</button> : <button className="button" onClick={logout}>Logout</button>}
            </div>


        </nav>

    )

}

export default Navbar;

