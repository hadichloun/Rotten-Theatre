import React, { useState } from "react";
import { useSelector } from "react-redux";
import  Carousel from 'react-multi-carousel';
import Movie from "./Movie";

function MovieList() {

    const movies = useSelector(state => state.movies.movies)

   console.log(movies, "<===movies from store")

    return (
        <div>
    
            <Carousel
  additionalTransfrom={0}
  arrows
  autoPlaySpeed={3000}
  centerMode={false}
  className=""
  containerClass="container-with-dots"
  dotListClass=""
  draggable
  focusOnSelect={false}
  infinite
  itemClass=""
  keyBoardControl
  minimumTouchDrag={80}
  renderButtonGroupOutside={false}
  renderDotsOutside={false}
  responsive={{
    desktop: {
      breakpoint: {
        max: 3000,
        min: 1024
      },
      items: 3,
      partialVisibilityGutter: 40
    },
    mobile: {
      breakpoint: {
        max: 464,
        min: 0
      },
      items: 1,
      partialVisibilityGutter: 30
    },
    tablet: {
      breakpoint: {
        max: 1024,
        min: 464
      },
      items: 2,
      partialVisibilityGutter: 30
    }
  }}
  showDots={false}
  sliderClass=""
  slidesToSlide={1}
  swipeable
>
                {movies && movies.map((movie) => {
                    return <Movie key={movie.id} movie={movie} />
                })}
            </Carousel>
        </div>
    )
}

export default MovieList;

