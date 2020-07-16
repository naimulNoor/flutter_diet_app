class Meal {
    final String mealTime,name,ImagePath,kiloCaloriesBurnt,timeTaken;

    Meal({
     this.mealTime,
     this.name,
     this.ImagePath,
     this.kiloCaloriesBurnt,
     this.timeTaken
  });
}

final meals =[
  Meal(
  mealTime: "BreakFast",
  name:"Frit Granola",
  kiloCaloriesBurnt: "271",
  timeTaken: "10",
  ImagePath: "assets/fruit_granola.jpg",),

  Meal(
    mealTime: "Dinner",
    name:"Pesto Pasta",
    kiloCaloriesBurnt: "271",
    timeTaken: "10",
    ImagePath: "assets/pesto_pasta.jpg",),

  Meal(
    mealTime: "Snaks",
    name:"Kito Snaks",
    kiloCaloriesBurnt: "414",
    timeTaken: "16",
    ImagePath: "assets/keto_snack.jpg",),
];