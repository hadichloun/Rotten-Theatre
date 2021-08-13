import React from "react";
import { useHistory } from "react-router-dom";

function Navbar({ currentUser, setCurrentUser }) {

    const history = useHistory();

    function goHome() {
        history.push('/home')
    }

    return (

        <div>
            <button className="button" onClick={goHome}>Home</button>   
        </div>

    )

}

export default Navbar;

