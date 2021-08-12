import logo from './logo.svg';
import React, { useEffect, useState } from "react";
import { BrowserRouter as Router, Route, Switch, Redirect,  BrowserRouter  } from 'react-router-dom';
import './App.css';
import MovieList from './MovieList';

function App() {

  const [movies, setMovies] = useState([])

  useEffect(() => {
  fetch("http://localhost:3001/movies")
  //fetch("https://api.themoviedb.org/3/movie/popular?api_key=907f7318c267154453ecc1e0f2481ada")
       .then(r => r.json())
       .then((data) => {
          console.log(data)
         setMovies(data)
       })
   }, [])

  return (
    <div>
      <MovieList movies={movies} />

      <Router>
        </Router>
        <BrowserRouter>
        <Switch>
          <Route exact path="/home">
            <MovieList movies={movies} />
          </Route>
        </Switch>
      </BrowserRouter>
    </div>
  );
}

export default App;
