let rock = document.querySelector('#rock');
let paper = document.querySelector('#paper');
let scissors = document.querySelector('#scissor');
let winScoreElement = document.querySelector('#win-score');
let loseScoreElement = document.querySelector('#lose-score');
let resultElement = document.querySelector('#result');
let playButtonElement = document.querySelector('#play-button');

let winScore = 0;
let loseScore = 0;

let gameInProgress = false; // Initialize the game as in progress

// Set the maximum number of wins required to end the game
const maxWins = 5; // Adjust as needed

// Get the computer move at random between 0 > and < 1
function computerMove() {
    if (gameInProgress) {
        // Pause the image change function
        clearInterval(imageChangeInterval);
        // Get the ID selector of the current image
        let compMove = images[currentIndex].id;
        return compMove;
    } else {
        // If the game is not in progress, return null
        return null;
    }
}

// Updates the scores and checks for game end condition
function updateScores(playerChoice, computerChoice) {
    if (playerChoice === computerChoice) {
        resultElement.textContent = 'It\'s a tie.';
    } else if ((playerChoice === 'rock' && computerChoice === 'scissor') || (playerChoice === 'paper' && computerChoice === 'rock') || (playerChoice === 'scissor' && computerChoice === 'paper')) {
        resultElement.textContent = 'You win!';
        winScore++;
        winScoreElement.textContent = winScore;
        if (winScore >= maxWins) {
            resultElement.textContent = 'Game over. You won the match!';
            gameInProgress = false;
        }
    } else {
        resultElement.textContent = 'You lose!';
        loseScore++;
        loseScoreElement.textContent = loseScore;
        if (loseScore >= maxWins) {
            resultElement.textContent = 'Game over. Computer won the match!';
            gameInProgress = false;
        }
    }

    if (!gameInProgress) {
        // Stop the image change function when the game is over
        clearInterval(imageChangeInterval);
    } else {
        // Resume the image change function
        imageChangeInterval = setInterval(changeImage, 500);
    }
}

rock.addEventListener('click', function () {
    if (gameInProgress) {
        let playerMove = 'rock';
        let cMove = computerMove();
        updateScores(playerMove, cMove);
        gameInProgress = false;
    }
});

paper.addEventListener('click', function () {
    if (gameInProgress) {
        let playerMove = 'paper';
        let cMove = computerMove();
        updateScores(playerMove, cMove);
    }
});

scissors.addEventListener('click', function () {
    if (gameInProgress) {
        let playerMove = 'scissor';
        let cMove = computerMove();
        updateScores(playerMove, cMove);
    }
});

// Get the image container and all images
const imageContainer = document.querySelector(".image-container");
const images = imageContainer.querySelectorAll("img");

let currentIndex = 0;
let imageChangeInterval; // Start image change function

// Function to change the displayed image
function changeImage() {
    if(gameInProgress){
        // Hide the current image
        images[currentIndex].style.opacity = 0;

        // Increment the index, or reset to 0 if at the end of the array
        currentIndex = (currentIndex + 1) % images.length;

        // Display the next image
        images[currentIndex].style.opacity = 1;
    }
}

let gameStarted = false;

playButtonElement.addEventListener('click', function(){
    if (!gameInProgress){
        gameInProgress = true;
        gameStarted = true;
        imageChangeInterval = setInterval(changeImage, 500);
    }
})