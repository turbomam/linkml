

CREATE TABLE activity (
	id TEXT NOT NULL, 
	started_at_time TEXT, 
	ended_at_time TEXT, 
	was_informed_by TEXT, 
	was_associated_with TEXT, 
	used TEXT, 
	description TEXT
);

CREATE TABLE "Address" (
	street TEXT, 
	city TEXT
);

CREATE TABLE agent (
	id TEXT NOT NULL, 
	acted_on_behalf_of TEXT, 
	was_informed_by TEXT
);

CREATE TABLE "BirthEvent" (
	started_at_time TEXT, 
	ended_at_time TEXT, 
	is_current BOOLEAN, 
	in_location TEXT
);

CREATE TABLE "Company" (
	id TEXT NOT NULL, 
	name TEXT, 
	aliases TEXT, 
	ceo TEXT
);

CREATE TABLE "Dataset" (
	persons TEXT, 
	companies TEXT, 
	activities TEXT
);

CREATE TABLE "EmploymentEvent" (
	started_at_time TEXT, 
	ended_at_time TEXT, 
	is_current BOOLEAN, 
	employed_at TEXT
);

CREATE TABLE "Event" (
	started_at_time TEXT, 
	ended_at_time TEXT, 
	is_current BOOLEAN
);

CREATE TABLE "FamilialRelationship" (
	started_at_time TEXT, 
	ended_at_time TEXT, 
	type VARCHAR(10) NOT NULL, 
	related_to TEXT NOT NULL
);

CREATE TABLE "MarriageEvent" (
	started_at_time TEXT, 
	ended_at_time TEXT, 
	is_current BOOLEAN, 
	married_to TEXT, 
	in_location TEXT
);

CREATE TABLE "MedicalEvent" (
	started_at_time TEXT, 
	ended_at_time TEXT, 
	is_current BOOLEAN
);

CREATE TABLE "Organization" (
	id TEXT NOT NULL, 
	name TEXT, 
	aliases TEXT
);

CREATE TABLE "Person" (
	id TEXT NOT NULL, 
	name TEXT, 
	has_employment_history TEXT, 
	has_familial_relationships TEXT, 
	has_medical_history TEXT, 
	age_in_years INTEGER, 
	addresses TEXT, 
	has_birth_event TEXT, 
	aliases TEXT
);

CREATE TABLE "Place" (
	id TEXT NOT NULL, 
	name TEXT, 
	aliases TEXT
);

CREATE TABLE "Relationship" (
	started_at_time TEXT, 
	ended_at_time TEXT, 
	related_to TEXT, 
	type TEXT
);
