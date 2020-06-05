require('dotenv').config()
const mysql = require('mysql2')

const pool = mysql.createPool({
    host: process.env.ip,
    user: process.env.user,
    password: process.env.pass,
    database: 'test'
})

// genUser()
// genFollow()
// genPost()
// genComment()
// genLike()
// genShare()

function genUser() {
    for (let i = 0; i < 29; i++) {

        const obj = { email: `${string(10)}@mail.com`, firstname: string(10), lastname: string(10) }

        query('INSERT INTO users SET ?', obj)

    }
}

function genFollow() {
    for (let i = 0; i < 50;) {

        const randFollowing = Math.floor(Math.random() * (50 - 1)) + 1
        const randFollower = Math.floor(Math.random() * (50 - 1)) + 1

        if (randFollower != randFollowing) {

            i++

            const obj = {
                following: randFollowing,
                follower: randFollower
            }

            query('INSERT INTO follows SET ?', obj)

        }

    }

    console.log('Successful.')
}

function genPost() {
    for (let i = 0; i < 50; i++) {

        const randUser = Math.floor(Math.random() * (50 - 1)) + 1

        const obj = {
            message: string(20),
            user_id: randUser,
            like_total: 0,
            comment_total: 0
        }

        query('INSERT INTO posts set ?', obj)

    }

    console.log('Successful.')
}

function genComment() {
    for (let i = 0; i < 50; i++) {

        const randUser = Math.floor(Math.random() * (50 - 1)) + 1
        const randPost = Math.floor(Math.random() * (50 - 1)) + 1

        const obj = {
            message: `${string(20)} ${randPost}`,
            post_id: randPost,
            user_id: randUser
        }

        query('INSERT INTO comments SET ?', obj)

    }

    console.log('Successful.')
}

function genLike() {
    for (let i = 0; i < 50; i++) {

        const randUser = Math.floor(Math.random() * (50 - 1)) + 1
        const randPost = Math.floor(Math.random() * (50 - 1)) + 1

        const obj = {
            post_id: randPost,
            user_id: randUser
        }

        query('INSERT INTO likes SET ?', obj)

    }

    console.log('Successful.')
}

function genShare() {
    for (let i = 0; i < 50; i++) {

        const randUser = Math.floor(Math.random() * (50 - 1)) + 1
        const randPost = Math.floor(Math.random() * (50 - 1)) + 1

        const obj = {
            post_id: randPost,
            user_id: randUser
        }

        query('INSERT INTO shares SET ?', obj)

    }

    console.log('Successful.')
}

function string(length) {
    let result = ''

    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'

    const charactersLength = characters.length

    for (let i = 0; i < length; i++) {

        result += characters.charAt(Math.floor(Math.random() * charactersLength));

    }

    return result;
}

function query(command, values) {

    new Promise((resolv, reject) => {

        pool.getConnection((err, connection) => {
            if (err) {
                return reject({ error: err })
            }

            connection.query(command, values, (error, result) => {

                if (error) {
                    return reject({ error })
                }

                pool.releaseConnection(connection)

                resolv(result)

            })

        })

    })

}