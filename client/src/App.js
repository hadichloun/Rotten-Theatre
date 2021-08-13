import React, { useEffect, useState } from "react";
import { BrowserRouter as Router, Route, Switch, Redirect,  BrowserRouter  } from 'react-router-dom';
import './App.css';
import MovieList from './MovieList';
import MovieDetails from './MovieDetails';
import Header from "./Header";


function App() {

  const [movies, setMovies] = useState([])
  const [currentUser, setCurrentUser] = useState(null)

  useEffect(() => {
  fetch("http://localhost:3001/movies")
       .then(r => r.json())
       .then((data) => {
          console.log(data)
         setMovies(data)
       })
   }, [])

  return (
    <div> 
        <BrowserRouter>

        <Header
          movies={movies}
        />
        <br></br>
        <br></br>
        <br></br>
        <Switch>
          <Route exact path="/home">
            <MovieList movies={movies} />
          </Route>
          <Route exact path="/movies/:id">
            <MovieDetails />
          </Route>
        </Switch>
      </BrowserRouter>
    </div>
  );
}

export default App;
