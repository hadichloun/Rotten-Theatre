import { GET_MOVIES, POST_MOVIES, SEARCH_MOVIES } from "../types/movieTypes"




const initialState = {
    movies: [],
    searchMovies: [],
    search: ""
}

export default (state = initialState, action) => {

switch(action.type){
     case GET_MOVIES: 
       return {
           ...state
       };
       case POST_MOVIES: 
       return {
           ...state,
           movies: action.payload
       };

       case SEARCH_MOVIES: 
       return {
           ...state,
           search: action.payload,
           searchMovies: state.movies.filter(movie =>{
                const regex = new RegExp(`^${action.payload}`, 'gi')
                return movie.name.match(regex)
           })
       };
       
       default :
       return state
}

}