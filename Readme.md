# Info
- This is monorepo
- duxian-store-front: Ecommerce Frontend with React
- duxian-store: Backend
- store-next-example: Frontend with NextJs

# Run each packages

## duxiana-store

- Create .env
- Copy/pass and change environment variable in .env.template
- Run source code

```(bash)
  npm i
  npm run seed
  npm run dev
```

Note: "npm run seed" just run 1 time when setup this repo. The next time, just run "npm run dev"

## duxian-store-front

- Create .env
- Copy/pass and change environment variable in .env.template
- Run source code

```(bash)
  npm i
  npm run dev
```

-If you want change port to run in dev environment, Change port field in duxian-store-front/vite.config.ts

## Run monorrepo

- at root folder run this command:
```(bash)
  npm run start:dev
```
Or
```(bash)
  npm run start:dev
```


## Restore example data
- copy folder data/uploads to packages/duxiana-store
- Restore file data/database.sql to your database

## Admin account with database restore:

- username: admin@gmail.com
- password: Leductinhkx97