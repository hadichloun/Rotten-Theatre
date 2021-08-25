import React, { useEffect, useState } from "react";
import { BrowserRouter as Router, Route, Switch, Redirect,  BrowserRouter  } from 'react-router-dom';
import MovieList from './MovieList';
import MovieDetails from './MovieDetails';
import Header from "./Header";
import { useDispatch, useSelector } from "react-redux";
import { fetchMovies } from "./redux/actions/moviesAction";
import Signup from "./Signup";
import Login from "./Login";

function App() {

  //const [movies, setMovies] = useState([])
  const [currentUser, setCurrentUser] = useState(null)

  const dispatch  = useDispatch()


  useEffect(() => {
    dispatch(fetchMovies())
/*   fetch("http://localhost:3001/movies")
       .then(r => r.json())
       .then((data) => {
          console.log(data)
         setMovies(data)
       }) */
   }, [])

  return (
    <div> 
        <BrowserRouter>

       <Header
          currentUser={currentUser}
          setCurrentUser={setCurrentUser}
        />
        <br></br>
        <br></br>
        <br></br>
        <Switch>
          <Route exact path="/home">
            <MovieList />
          </Route>
          <Route exact path="/movies/:id">
            <MovieDetails currentUser={currentUser} />
          </Route>
          <Route exact path="/signup">
            <Signup setCurrentUser={setCurrentUser} currentUser={currentUser} />
          </Route>
          <Route exact path="/login">
            <Login  setCurrentUser={setCurrentUser}/>
          </Route>
        </Switch>
      </BrowserRouter>
    </div>
  );
}

export default App;
