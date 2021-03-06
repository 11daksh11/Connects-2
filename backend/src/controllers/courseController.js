// IMPORTS
const { admin, database } = require('../utils/firebase');
const chalk = require('chalk');

// MODEL IMPORTS
const courseDB = require('../models/courseDB');

// CREATE COURSE 
const createCourse = (course) => {
	console.log(course)
	return new Promise((resolve, reject) => {
		console.log(chalk.yellow("CREATING NEW COURSE..."))
		
		// SAVING DETAILS TO DB
		courseDB.createCourse(course)
			.then((resp) => {

				// SUCCESS
				console.log(chalk.green("CREATED NEW COURSE!"))
				
				resolve({
					statusCode: 200,
					payload: {
						msg: "Course created successfully!",
					}
				})
			
			})
			.catch((err) => {
				console.log(err)
				reject({
					statusCode: 400,
					payload: {
						msg: "Server Side error contact support"
					},
				})
			})
	})
}


module.exports = {
	createCourse
}