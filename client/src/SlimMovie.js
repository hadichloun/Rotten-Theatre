import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import './styles/MovieList.css'


function SlimMovie({movie}) {
    
    const history = useHistory();

    const [comment, setComment] = useState('');
    const [reviews, setReviews] = useState(movie.reviews);
    
    function movieDetails() {
       history.push(`/movies/${movie.id}`);
    }

    function handleSubmit(e){

        e.preventDefault()

        const data = {
            "review": {
                "comment": comment,
                "user_id": 19,
                "movie_id": movie.id
            }
        }
    
        fetch("http://localhost:3001/reviews", {
          method: "POST",
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(data)
        })
          .then(response => response.json())
          .then(review => {
              setReviews([...reviews, review]);
              setComment('')
              // setShowReviewForm(!showReviewForm);
          })      
      }

      function handleDelete(e, reviewId){

        console.log(reviewId)

        e.preventDefault()
    
        fetch(`http://localhost:3001/reviews/${reviewId}`, {
          method: "DELETE",
          headers: {
            'Content-Type': 'application/json'
          }
        })
          .then(response => response.json())
          .then(response => {
              console.log(response.message)
              const updatedReviews = reviews.filter((review) => {
                 return review.id !== reviewId
              })
              setReviews(updatedReviews);
              // setComment('')
              // setShowReviewForm(!showReviewForm);
          })      
      }

    return (
        <div className="slimMovie">

                <img className="movie-image" src={movie.image_url} alt={movie.name} onClick={movieDetails} />
        </div>
    )
}

export default SlimMovie;
