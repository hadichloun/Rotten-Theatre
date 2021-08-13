import React, { useState } from "react";
import { useSelector } from "react-redux";
import Movie from "./Movie";

function MovieList() {

    const movies = useSelector(state => state.movies.movies)

   console.log(movies, "<===movies from store")

    return (
        <div>
            <br></br>
            <div className="filter">
                <span className="white-texts">Genres</span>
                <br></br>
                <select className="select-css">
                        <option value="All">All</option>
                        <option value="Action">Action</option>
                        <option value="Animation">Animation</option>
                        <option value="Adventure">Adventure</option>
                        <option value="Drama">Drama</option>
                        <option value="Thriller">Thriller</option>
                        <option value="Documentary">Documentary</option>
                        <option value="Comedy">Comedy</option>
                        <option value="Fantasy">Fantasy</option>
                        <option value="Family Movies">Family Movies</option>
                    </select>                  
            </div>
            <br></br>
            <br></br>
            <div className="cards">
                {movies && movies.map((movie) => {
                    return <Movie key={movie.id} movie={movie} />
                })}
            </div>
        </div>
    )
}

export default MovieList;

