import { GET_MOVIES, POST_MOVIES } from "../types/movieTypes"




const initialState = {
    movies: []
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
       default :
       return state
}

}