package airline.model;

import java.io.Serializable;

		public class airline implements Serializable {
			private static final long serialVersionUID = 1L;
			
			private String firstname; 		// for REGISTRATION
			private String middlename;		// for REGISTRATION
			private String lastname;		// for REGISTRATION
			private String username;		// for VALIDATION , REGISTRATION
			private String password;		// for VALIDATION , REGISTRATION
			private String contact;			// for VALIDATION , REGISTRATION , BOOKING
			private String address;			// for VALIDATION , REGISTRATION , BOOKING
			private String fullname;		// for BOOKING
			private String email;			// for BOOKING
			private String date_of_journey;	// for BOOKING
			private String date_of_birth;
			private int num;
			private String airlines;
			private String start_from;
			private String dest;
			private String time;
			
			public airline() {
				
			}
			
			public airline(int num, String airlines, String start_from, String dest, String time) {
				super();
				this.num=num;
				this.airlines=airlines;
				this.start_from=start_from;
				this.dest=dest;
				this.time=time;
			}
			
			public int getNum() {
				return num;
			}
			public void setNum(int num) {
				this.num = num;
			}
			public String getAirlines() {
				return airlines;
			}
			public void setAirlines(String airlines) {
				this.airlines = airlines;
			}
			public String getStart_from() {
				return start_from;
			}
			public void setStart_from(String start_from) {
				this.start_from = start_from;
			}
			public String getDest() {
				return dest;
			}
			public void setDest(String dest) {
				this.dest = dest;
			}
			public String getTime() {
				return time;
			}
			public void setTime(String time) {
				this.time = time;
			}
			public String getDate_of_birth() {
				return date_of_birth;
			}
			public void setDate_of_birth(String date_of_birth) {
				this.date_of_birth = date_of_birth;
			}
			private String from_location;	// for BOOKING
			private String final_location;	// for BOOKING
			
			
			public String getFullname() {
				return fullname;
			}
			public void setFullname(String fullname) {
				this.fullname = fullname;
			}
			public String getEmail() {
				return email;
			}
			public void setEmail(String email) {
				this.email = email;
			}
			public String getDate_of_journey() {
				return date_of_journey;
			}
			public void setDate_of_journey(String date_of_journey) {
				this.date_of_journey = date_of_journey;
			}
			public String getFrom_location() {
				return from_location;
			}
			public void setFrom_location(String from_location) {
				this.from_location = from_location;
			}
			public String getFinal_location() {
				return final_location;
			}
			public void setFinal_location(String final_location) {
				this.final_location = final_location;
			}
			public String getFirstname() {
				return firstname;
			}
			public void setFirstname(String firstname) {
				this.firstname = firstname;
			}
			public String getMiddlename() {
				return middlename;
			}
			public void setMiddlename(String middlename) {
				this.middlename = middlename;
			}
			public String getLastname() {
				return lastname;
			}
			public void setLastname(String lastname) {
				this.lastname = lastname;
			}
			public String getContact() {
				return contact;
			}
			public void setContact(String contact) {
				this.contact = contact;
			}
			public String getAddress() {
				return address;
			}
			public void setAddress(String address) {
				this.address = address;
			}
			public String getUsername() {
				return username;
			}
			public void setUsername(String username) {
				this.username = username;
			}
			public String getPassword() {
				return password;
			}
			public void setPassword(String password) {
				this.password = password;
			}

			
	}
