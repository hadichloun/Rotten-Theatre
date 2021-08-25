import React from "react";
import { Link } from "react-router-dom";
import { FaList } from 'react-icons/fa';
import { useHistory } from "react-router-dom";
import './styles/Navbar.css'
import {RiMovie2Line} from "react-icons/ri";
import {GiPopcorn} from "react-icons/gi";
import { useDispatch } from "react-redux";
import { searchMovies } from "./redux/actions/moviesAction";



function Navbar({ currentUser, setCurrentUser }) {

    const dispatch = useDispatch();


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

    function handleChange (e) {
          dispatch(searchMovies(e.target.value))
    }

    return (

        <nav>
        
           <Link to='/' className="nav-icon"> <GiPopcorn/> </Link> 
              

            <input type='text'  className="select-css" onChange={handleChange}/>
              
            

            <div className='navButtons'>    
                {!currentUser ? <button className="button" onClick={goToSignupPage}>Register</button> : ""}
                {!currentUser ? <button className="button" onClick={goTologinPage}>Login</button> : <button className="button" onClick={logout}>Logout</button>}
            </div>


        </nav>

    )

}

export default Navbar;

