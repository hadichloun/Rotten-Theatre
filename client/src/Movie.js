import React, { useState, useEffect } from "react";
import { useHistory } from "react-router-dom";
import ReactPlayer from 'react-player';
import ReactStars from "react-rating-stars-component";
import StarRating from "./StarRating";

function Movie({movie, currentUser}) {
    
    const history = useHistory();

    const [comment, setComment] = useState('');
    const [reviews, setReviews] = useState(movie.reviews);
    const [count, setCount] = useState(0);
    const [rating, setRating] = useState(movie.rating);

    // fetch(`http://localhost:3001/ratings?user_id=${currentUser?.id || 57}&movie_id=${movie.id}`)
    // .then(r => r.json())
    // .then((ratingObj) => {
    //   console.log(ratingObj.rating);
    //   setRating(ratingObj.rating);
    //   //ratingChanged(rating.rating);
    // })


    console.log(`rating is: ${rating}`);
    
    function movieDetails() {
       history.push(`/movies/${movie.id}`);
    }

    const ratingChanged = (newRating) => {
        setRating(newRating);
        console.log(newRating);
        console.log(JSON.stringify(movie));
        console.log(`movie id: ${movie.id}`);
        
        const data = {
          "rating": {
              "rating": newRating,
              "user_id": currentUser?.id || 57,
              "movie_id": movie.id
          }
        }
  
      fetch("http://localhost:3001/ratings", {
        method: "POST",
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
      })
        .then(response => response.json())
        .then(rating => {
          console.log(`${rating.rating} successfully saved!`)
        })
        
      };
       

    function handleSubmit(e){

        e.preventDefault()

        const data = {
            "review": {
                "comment": comment,
                "user_id": currentUser.id,
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
              <h2 className="most-popular">Theatre Room</h2>
                <img className="movie-card-image" src={movie.image_url} alt={movie.name} onClick={movieDetails} />
            { <div className="card-info">
                <ul>
                    <p>Name: {movie.name}</p>
                    <p>Type: {movie.movie_type}</p>
                    <p>Genre: {movie.genre}</p>
                    <p>Description: {movie.description}</p>

                    <ReactPlayer className='react-player' url={movie.video_url} />
            
                   { !currentUser && <p>Please login to write Reviews..</p> }
                   
                   
                </ul>

                { currentUser &&
                    <div>
                        <h3>Submit Your Review</h3>
                        <form className="note-editor">
                            <div>
                             
                        <textarea placeholder='enter comment...' onChange={(e) => setComment(e.target.value)} value={comment} />
                            </div>
                            
                        <div className="button-row">            
                            <button onClick={handleSubmit} type="button">Add Comment</button>
                        </div>
                        </form>
                    </div>
                }
 <div className='reviews'>
{
                        reviews.map(review => 
                        <ul>
                            <li>{review.comment}  </li>
                            {currentUser &&<li className='delete' onClick={(e) => handleDelete(e, review.id)} >x</li> }
                        </ul>)

                    }
                      </div>
            </div>}

            <StarRating totalStars={5} currentRating={rating} setRating={ratingChanged} />
        </div>
    )
}

export default Movie;
