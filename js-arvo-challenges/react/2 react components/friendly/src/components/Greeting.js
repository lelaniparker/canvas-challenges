import React from "react"
import { styles } from "./styles"

const Greeting = props => {
	return (
		<div style={styles.divStyle} className="container">
			<img alt="cute cat" style={styles.imgStyle} src={props.image} />
			<h1>Hi {props.friend}!</h1>
		</div>
	)
}

export default Greeting