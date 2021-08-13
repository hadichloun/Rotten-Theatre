import { POST_MOVIES } from "../types/movieTypes";


export const fetchMovies = () => async(dispatch) => {

    try{

       const response = await  fetch("http://localhost:3001/movies")

       const movies = await response.json();

       dispatch({
           type: POST_MOVIES,
           payload: movies
       })

    }catch(err){
           console.log(err)
    }

}

