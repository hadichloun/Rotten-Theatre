import React from "react";
import { Link } from "react-router-dom";
import { FaList } from 'react-icons/fa';
import { useHistory } from "react-router-dom";
import './styles/Navbar.css'



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
        history.push('/home')
    }

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
                {!currentUser ? <button className="button" onClick={goToSignupPage}>Register</button> : ""}
                {!currentUser ? <button className="button" onClick={goTologinPage}>Login</button> : <button className="button" onClick={logout}>Logout</button>}
            </div>


        </nav>

    )

}

export default Navbar;

