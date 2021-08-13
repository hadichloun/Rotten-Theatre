import React from "react";
import { useHistory } from "react-router-dom";


function Movie({movie}) {
    
    const history = useHistory();

    console.log(`history: ${history}`);
    
    function movieDetails() {
       history.push(`/movies/${movie.id}`);
    }

    return (
        <div className="card">
            <div className="card-info">
                <ul>
                    <p>Name: {movie.name}</p>
                    <p>Genre: {movie.genre}</p>
                    <img className="movie-image" src={movie.image_url} alt={movie.name} onClick={movieDetails}></img>
                </ul>
            </div>
        </div>
    )
}

export default Movie;
