import React, { useState } from "react";
import { useSelector } from "react-redux";
import  Carousel from 'react-multi-carousel';
import Movie from "./Movie";
import SlimMovie from "./SlimMovie";
import './styles/MovieList.css'

function MovieList() {

    const movies = useSelector(state => state.movies.movies)

   console.log(movies, "<===movies from store")

    return (
      <div className='movieList'>

      <h2>Cartoon</h2>
        <Carousel
          itemClass="carousel-item-padding-40-px"
          additionalTransfrom={0}
          arrows
          autoPlaySpeed={3000}
          centerMode={false}
          className="carousel"
          containerClass="container-with-dots"
          dotListClass=""
          draggable
          focusOnSelect={false}
          infinite
          itemClass=""
          keyBoardControl
          minimumTouchDrag={80}
          renderButtonGroupOutside={true}
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
            return movie.movie_type === 'cartoon' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Carousel>
        <br />
        <br />
        <h2>Horror</h2>
        <Carousel
          additionalTransfrom={0}
          arrows
          autoPlaySpeed={3000}
          centerMode={false}
          className="carousel"
          containerClass="container-with-dots"
          dotListClass=""
          draggable
          focusOnSelect={false}
          infinite
          itemClass=""
          keyBoardControl
          minimumTouchDrag={80}
          renderButtonGroupOutside={true}
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
            return movie.movie_type === 'horror' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Carousel>
        <br />
        <br />

        <h2>Drama</h2>
        <Carousel
          containerClass="carousel-container"
          itemClass="carousel-item-padding-40-px"
          additionalTransfrom={0}
          arrows
          autoPlaySpeed={3000}
          centerMode={false}
          className="carousel"
          containerClass="container-with-dots"
          dotListClass=""
          draggable
          focusOnSelect={false}
          infinite
          itemClass=""
          keyBoardControl
          minimumTouchDrag={80}
          renderButtonGroupOutside={true}
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
            return movie.movie_type === 'drama' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Carousel>
        <br />
        <br />

        <h2>Comedy</h2>
        <Carousel
          additionalTransfrom={0}
          arrows
          autoPlaySpeed={3000}
          centerMode={false}
          className="carousel"
          containerClass="container-with-dots"
          dotListClass=""
          draggable
          focusOnSelect={false}
          infinite
          itemClass=""
          keyBoardControl
          minimumTouchDrag={80}
          renderButtonGroupOutside={true}
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
            return movie.movie_type === 'comedy' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Carousel>
        <br />
        <br />

        <h2>Super Hero</h2>
        <Carousel
          itemClass="carousel-item-padding-40-px"
          additionalTransfrom={0}
          arrows
          autoPlaySpeed={3000}
          centerMode={false}
          className="carousel"
          containerClass="container-with-dots"
          dotListClass=""
          draggable
          focusOnSelect={false}
          infinite
          itemClass=""
          keyBoardControl
          minimumTouchDrag={80}
          renderButtonGroupOutside={true}
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
            return movie.movie_type === 'superhero' && <SlimMovie key={movie.id} movie={movie} />
          })}
        </Carousel>




      </div>
    )
}

export default MovieList;

