import React from "react"
import { styles } from "./styles"

const InspirationalMessage = props => {
	return <div style={styles.divStyleMessage}><p>{props.message}</p></div>
}

export default InspirationalMessage