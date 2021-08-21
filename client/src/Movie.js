import React, { useState } from "react";
import { useHistory } from "react-router-dom";


function Movie({movie}) {
    
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
        <div className="movieCard">
                <img className="movie-image" src={movie.image_url} alt={movie.name} onClick={movieDetails} />
            {/* <div className="card-info">
                <ul>
                    <p>Name: {movie.name}</p>
                    <p>Genre: {movie.genre}</p>
                    <p>Description: {movie.description}</p>
                    <img className="movie-image" src={movie.image_url} alt={movie.name} onClick={movieDetails}></img>
                    <p>Reviews..</p>
                    {
                        reviews.map(review => <ul>{review.comment} <button onClick={(e) => handleDelete(e, review.id)} type="button">Delete Comment</button></ul>)
                    }
                </ul>

                <div>
                    <h3>Submit Your Review</h3>
                    <form className="note-editor">
                    <label htmlFor='text'>
                        Comment:
                        <textarea onChange={(e) => setComment(e.target.value)} value={comment} />
                    </label>        
                    <div className="button-row">            
                        <button onClick={handleSubmit} type="button">Add Comment</button>
                    </div>
                    </form>
                </div>
            </div> */}
        </div>
    )
}

export default Movie;
