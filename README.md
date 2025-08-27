# Game Log (Backend)
backend for [Game Log](https://github.com/NotRelix/game-log)

# Built with
![My Skills](https://go-skill-icons.vercel.app/api/icons?i=railway,supabase,hono,drizzle,postgres)

# Installation

```
git clone git@github.com:NotRelix/game-log-backend.git
cd game-log-backend
npm install
```

# Usage
1. Add your `.env` based on the `.env.template` and paste in your values
2. Create a database named `game_log`

```bash
# Example inside a psql shell
CREATE DATABASE game_log;
```

3. Run the following

```
npx drizzle-kit generate
npx drizzle-kit push
npm run db:reset
npm run dev
```
# Others
- **Main Website** - https://github.com/NotRelix/game-log
- **Editors** - https://github.com/NotRelix/game-log-editor
