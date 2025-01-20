# Space Invaders Clone for Pico-8

A classic arcade-style **Space Invaders** clone built for the Pico-8 fantasy console. This game features progressive difficulty levels, player and enemy shooting mechanics, and a simple scoring system.

## Features

- **Player Controls**:
  - Move left and right to avoid enemy bullets.
  - Shoot bullets to destroy enemies.
- **Enemies**:
  - Enemies move horizontally and descend over time.
  - As levels progress, enemies move faster and shoot back more frequently.
- **Progressive Levels**:
  - Difficulty increases with each level.
  - Enemy speed and shooting frequency rise.
- **Game Over**:
  - The game ends if an enemy reaches the player's position or the player is hit by an enemy bullet.
- **Scoring**:
  - Gain points by destroying enemies.

## Gameplay

- Use the arrow keys (`←` and `→`) to move the player.
- Press `Z` (Pico-8 button 4) to shoot.
- Avoid enemy bullets and eliminate all enemies to progress to the next level.

## Installation

1. Clone or download the repository:
   ```bash
   git clone https://github.com/yourusername/space-invaders-clone.git
   ```
2. Place the `.p8` cartridge file in your Pico-8 `carts` directory.
3. Open Pico-8 and load the game:
   ```bash
   load space_invaders_clone.p8
   ```
4. Run the game:
   ```bash
   run
   ```

## How It Works

- **Player**: Moves and shoots bullets that collide with enemies.
- **Enemies**: Spawn in a grid pattern and move horizontally, descending periodically. They shoot bullets at random intervals.
- **Progression**: When all enemies are destroyed, a new wave spawns with increased difficulty.
- **Collision Detection**: Checks for bullet-enemy, bullet-player, and enemy-player collisions.

## Future Improvements

- Add power-ups for the player (e.g., rapid fire, shields).
- Introduce new enemy types with unique behaviors.
- Implement high-score saving.
- Add sound effects and music.

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

Enjoy the game and let me know if you have any feedback or ideas for improvement!
