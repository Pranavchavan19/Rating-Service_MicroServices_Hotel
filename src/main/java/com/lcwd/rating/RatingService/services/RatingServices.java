package com.lcwd.rating.RatingService.services;

import com.lcwd.rating.RatingService.entities.Rating;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RatingServices {

    // create

    public Rating create(Rating rating);

    // get all ratings

    List<Rating> getRatings();

    // get All by UserId

    List<Rating> getRatingByUserId(String userId);

    // get All by User

    List<Rating>  getRatingByHotelId(String hotelId);

}
