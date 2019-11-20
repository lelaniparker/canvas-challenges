import React, { Component } from "react"	// Add Component
import Clock from "./Clock"

class App extends Component {		// Class Constructor: class App extends Component
	constructor(props) {			// Props
		super(props)				// Super props
		this.state = {				// Initiate state with this.state (create state)
			latitude: null,
			date: new Date(),
			errorMessage: ""	// set errorMessage as empty string inside constructor
		}
		// Get current position data and set state values
		window.navigator.geolocation.getCurrentPosition(
			position => {			// pass props using this.setState (changes state)
				this.setState({
					latitude: position.coords.latitude,
					date: new Date()
				})
			},
			error => this.setState({ errorMessage: error.message })// pass errorMessage as a prop using this.setState
		)
	}
	render() {
		return <Clock date={this.state.date} season={this.getSeason()} errorMessage={this.state.errorMessage} /> // render onto DOM using this.state.KEYNAME (Never alter state in render method) -> Refer to Clock.js for Error Message
	}

	tick() {
		this.setState({ date: new Date() })
	}

	componentDidMount() {
		// Reset date every second
		this.timerId = setInterval(() => this.tick(), 1000)
	}

	componentWillUnmount() {
		// Clear the interval set in componentDidMount
		clearInterval(this.timerId)
	}

	isSouthernHemisphere(latitude) {
		// returns true if latitude is in the southern hemisphere
		return latitude <= 0
	}

	getSeason() {
		// arrays to represent the months for each season
		const southSummer = [1, 2, 12]
		const southAutumn = [3, 4, 5]
		const southWinter = [6, 7, 8]
		const southSpring = [8, 10, 11]

		// Make sure latitude is set it state. It may not be the first time this is called, in which case we will just return null
		let latitude = this.state.latitude ? this.state.latitude : null

		if (latitude === null) return null
		// this.state.date is always initialised
		let month = this.state.date.getMonth() + 1

		if (southSummer.includes(month)) {
			// summer in south and winter in north
			return this.isSouthernHemisphere(latitude) ? "summer" : "winter"
		} else if (southAutumn.includes(month)) {
			// autumn in south and spring in north
			return this.isSouthernHemisphere(latitude) ? "autumn" : "spring"
		} else if (southWinter.includes(month)) {
			// winter in south and summer in north
			return this.isSouthernHemisphere(latitude) ? "winter" : "summer"
		} else if (southSpring.includes(month)) {
			// spring in south and autumn in north
			return this.isSouthernHemisphere(latitude) ? "spring" : "autumn"
		}
	}
}

export default App