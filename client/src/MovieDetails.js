import { React, useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Movie from "./Movie";


function MovieDetails() {

    const [movie, setMovie] = useState(null);
    const [isLoaded, setIsLoaded] = useState(false)
    const params = useParams()

    useEffect(() => {
        fetch(`http://localhost:3001/movies/${params.id}`)
            .then(r => r.json())
            .then((movie) => {
                console.log('movie...');
                console.log(movie);
                setMovie(movie)
                setIsLoaded(true)
            })
    }, [params.id])


   if (!isLoaded) return <h2 className="white-texts movie-info">Loading...</h2>;


    return (
        <div>
        <div><h3 className="most-popular">Move Details</h3></div>
        <Movie key={movie.id} movie={movie}/>
    </div>     
    )
}

export default MovieDetails;
