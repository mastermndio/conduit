db.createUser(
  {
    user: 'conduit',
    pwd: 'conduit',
    roles: [
      {
        role: 'root',
        db: 'conduit'
      }
    ]
  }
)
