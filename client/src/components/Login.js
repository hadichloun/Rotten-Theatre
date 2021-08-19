import React, { useState } from "react";
import {useHistory} from 'react-router-dom'

function Login({classes, onLogin}) {
    const history = useHistory();
    const [errors, setErrors] = useState([])
    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")
    

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log(username, password)
        async function login(){
            const res = await fetch("/login", {
                method: "POST",
                headers: {
                "Content-Type": "application/json",
                },
                body: JSON.stringify({ 
                    username, 
                    password 
                    }),
            })
            if(res.ok){
                const user = await res.json()
                console.log(user, "<====user")
                onLogin(user)
                history.push('/account')
            } else {
                const err = await res.json()
                setErrors(err.errors)
            }
        };
        login()
    }
    
    return (
        <div>
           
                <h2>Login to your account</h2>
                <form className={classes.form} noValidate onSubmit={(e)=>{handleSubmit(e)}}>
                    <textField
                    variant="filled"
                    margin="normal"
                    required
                    fullWidth
                    id="username"
                    label="Username"
                    autoFocus
                    onChange={(e)=>{setUsername(e.target.value)}}
                    />
                    <textfield 
                    variant="filled"
                    margin="normal"
                    required
                    fullWidth
                    label="Password"
                    type="password"
                    id="password"
                    onChange={(e)=>{setPassword(e.target.value)}}
                    />
                    {/* <Link to="/account" style={{color: 'inherit', textDecoration: 'none'}}> */}
                       <button>
                            type="submit"
                            fullWidth
                            variant="contained"
                            color="primary"
                            className={classes.submit}
                        
                            Login
                            </button>
                    {/* </Link> */}
                    {errors ? errors.map((error) => (
                        <p>{error}</p>
                    ))
                    : null}
                </form>
         
        </div>
    )
}

export default Login;