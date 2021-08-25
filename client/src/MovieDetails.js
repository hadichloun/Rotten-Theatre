import { React, useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Movie from "./Movie";
import SlimMovie from "./SlimMovie";
import './styles/MovieDetails.css'


function MovieDetails({currentUser}) {

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


   if (!isLoaded) return <h2 className="white-texts movie-info">Film Rolling</h2>;


    return (
        <div>
    
        <Movie key={movie.id} movie={movie} currentUser={currentUser} />
    </div>
    )
}

export default MovieDetails;
