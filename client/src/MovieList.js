import React, { useState } from "react";
import { useSelector } from "react-redux";
import Slider from "react-slick";
import Movie from "./Movie";
import Search from "./Search";
import SlimMovie from "./SlimMovie";
 import './styles/MovieList.css'

function MovieList() {

    const {movies, search} = useSelector(state => state.movies)




   

    var settings = {
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 6,
      slidesToScroll: 1,
    };

   //console.log(movies, "<===movies from store")

   if(!search){
    return (
      <div className='movieList'>
      <h2>Cartoon</h2>
      <Slider {...settings}>
          {movies && movies.map((movie) => {
            return movie.movie_type === 'cartoon' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Slider>
        <br />
        <br />
        <h2>Horror</h2>
        <Slider {...settings}>
          {movies && movies.map((movie) => {
            return movie.movie_type === 'horror' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Slider>
        <br />
        <br />

        <h2>Drama</h2>
      
        <Slider {...settings}>
          {movies && movies.map((movie) => {
            return movie.movie_type === 'drama' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Slider>
        <br />
        <br />

        <h2>Comedy</h2>
       
        <Slider {...settings}>
          {movies && movies.map((movie) => {
            return movie.movie_type === 'comedy' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Slider>
        <br />
        <br />

        <h2>Super Hero</h2>
        
        <Slider {...settings}>
          {movies && movies.map((movie) => {
            return movie.movie_type === 'superhero' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Slider>
        <br />
        <br />



      </div>
    )
        }else{
          return <Search />
        }
}

export default MovieList;

