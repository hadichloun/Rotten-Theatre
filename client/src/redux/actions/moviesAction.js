import { POST_MOVIES, SEARCH_MOVIES } from "../types/movieTypes";


export const fetchMovies = () => async(dispatch) => {
    const API_ENDPOINT = process.env.NODE_ENV === "development" ? "http://localhost:3001" : "https://rotten-theatre1.herokuapp.com";
    try{

       const response = await  fetch(`${API_ENDPOINT}/movies`)

       const movies = await response.json();

       dispatch({
           type: POST_MOVIES,
           payload: movies
       })

    }catch(err){
           console.log(err)
    }

}

export const searchMovies = (value) => (dispatch) => {
    dispatch({
        type: SEARCH_MOVIES,
        payload: value
    })
}

