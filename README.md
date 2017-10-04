# README

RandoPic is a Rails Backend built for use in conjunction with the [JavaScript Fetch and Dom Code Challenge](https://github.com/learn-co-curriculum/javascript-code-challenge-fetch-and-dom).  This backend is designed to allow for students to render a specific image using GET, manipulate the DOM with JavaScript using JSON data and to persist changes (incrementing image 'likes' and adding associated comments).  This repo is meant for instructor use

Endpoints:

Rewrite all records with original seed data (reset for new challenge)
```
GET 'https://randopic.herokuapp.com/admin/dont-use-this-route/reset_to_seed'
Example Response:
[
  {
    "id": 101,
    "url": "http://blog.flatironschool.com/wp-content/uploads/2017/06/IMAG2936-352x200.jpg",
    "name": "Science Fair",
    "like_count": 0,
    "comments": [
      {
        "id": 101,
        "content": "first comment!",
        "image_id": 101,
        "created_at": "2017-10-04T16:20:08.622Z",
        "updated_at": "2017-10-04T16:20:08.622Z"
      }
    ]
  },
  
  ...
```

Get one image
```
GET 'https://randopic.herokuapp.com/images/:image_id'

Example Response:
{
  "id": 1,
  "url": "http://blog.flatironschool.com/wp-content/uploads/2017/06/IMAG2936-352x200.jpg",
  "name": "Science Fair",
  "like_count": 0,
  "comments": [
    {
      "id": 1,
      "content": "first comment!",
      "created_at": "2017-09-27T18:18:05.623Z",
      "updated_at": "2017-09-27T18:18:05.623Z"
    }
  ]
}
```
