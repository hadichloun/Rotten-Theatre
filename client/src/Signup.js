import React, {useState} from "react";
import { useHistory } from "react-router-dom";


function  Signup({setCurrentUser, currentUser}) {

    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")
    const history = useHistory()

    function handleSubmit(e) {
        e.preventDefault()

        const data = {   
            username: username,
            password: password
        }

        fetch('http://localhost:3001/signup', {
            method: "POST",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
          })
            .then((r) => r.json())
            .then(data => {

                if (data.error_message) {
                    console.log(data.error_message);
                }
                else {
                    setCurrentUser(data);
                }
            });
           
        return (
            history.push('/')
        )
       
    }

    return (
        <div>      
        <form className="form" onSubmit={handleSubmit}>
            <h2 className="white-texts">Sign up</h2>
            <br></br>
            <br></br>
            <label htmlFor="username" className="white-texts">Username</label>
            <br></br>
            <input
            type="text"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            />
            <br></br>
            <br></br>
            <label htmlFor="password" className="white-texts">Password</label>
            <br></br>
            <input
            type="password"
            id="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            autoComplete="current-password"
            />
            <br></br>
            <br></br>
            <input className="button" type="submit" value="Create an account" />
        </form>
    </div>
    )

}


export default Signup;
