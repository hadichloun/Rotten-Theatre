import React from "react";
import { useSelector } from "react-redux";
import Navbar from "./Navbar";

function Header() {

    const movies = useSelector(state => state.movies.movies)

    return (
        <div className="Header">
            <h1 className="title">Rotten Theatre<img ></img></h1>
            <Navbar className="main-navbar" />
        </div>
    )
}

export default Header;

