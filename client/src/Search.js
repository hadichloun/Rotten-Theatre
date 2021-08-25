
import React, { useState } from 'react'
import { useSelector } from 'react-redux'
import SlimMovie from './SlimMovie'
import './styles/Search.css'



const Search = () => {

    const {searchMovies} = useSelector(state => state.movies)
 


    console.log(searchMovies, "<===search movies")

if(searchMovies.length > 0){
    return (
        <div className='search-movies'>
          {searchMovies.map(movie => <SlimMovie key={movie.id} movie={movie}/>)}
        </div>
    )
}else{
   return  <h2 className='search-error'> oops! movie title doesn't exist :(</h2>
}
}

export default Search
