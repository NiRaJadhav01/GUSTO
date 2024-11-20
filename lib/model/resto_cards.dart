class RestoCards {
  final String restoName;
  final String type;
  final String imgURL;

  RestoCards({
    required this.restoName,
    required this.type,
    required this.imgURL,
  });
}

List<RestoCards> italyRestaurants = [
  RestoCards(
    restoName: "Casa Perbellini",
    type: "Verona",
    imgURL:
        "https://imgs.search.brave.com/7bIjpqbkAqyFZ0y01DZYMnOyCMiOP2_2DFPonrfjdqM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQ0/NjQ3ODgyNy9waG90/by9hLWNoZWYtaXMt/Y29va2luZy1pbi1o/aXMtcmVzdGF1cmFu/dHMta2l0Y2hlbi5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/andLSm1HRXJyTGUy/WHNUV05ZRUV5aU5p/Y3VkWVZBNGo4anZu/VGlKZHA1OD0",
  ),
  RestoCards(
    restoName: "Campo del Drago",
    type: "Montalcino",
    imgURL:
        "https://imgs.search.brave.com/IjcCs5fCuXeG7kr7cZPRG2LGzIKH55pTQNH6VKWdc9I/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE3/MTc4NzQyNi9waG90/by9lbmpveWluZy1s/dW5jaC13aXRoLWZy/aWVuZHMuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPTM4ZlJT/Wnl2dmRKNWdiLVkx/OU5qQlF4ckFqaHlF/MUd1M0RrOXBBeHU2/cTQ9",
  ),
  RestoCards(
    restoName: "Villa Elena",
    type: "Bergamo",
    imgURL:
        "https://imgs.search.brave.com/qtMtsqL_kDoPkiKbEvYjs8HcFZSFqubjvou-lG5UvBo/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTA0/NzA0MTE3L3Bob3Rv/L3Jlc3RhdXJhbnQt/cGxhdGVzLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1NaEZk/Tl9xVmd6b0hvdi1r/Z0Z4MHFXU1cwblpo/dDRsWlYxemluQzNF/YTQ0PQ",
  ),
];
