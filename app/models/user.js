const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({
  email: {
    type: String,
    required: true,
    unique: true
  },
  hashedPassword: {
    type: String,
    required: true
  },
  token: String
}, {
  timestamps: true,
  toJSON: {
    // remove `hashedPassword` field when we call `.toObject`
    // changed it to `toJSON`
    transform: (_doc, user) => {
      delete user.hashedPassword
      return user
    }
  }
})

module.exports = mongoose.model('User', userSchema)
