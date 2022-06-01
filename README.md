# Invola_assesment
#### Feature summary :
- view course details 
- view course location on Google Map
- mock reserve course 
- mock failure of fetching course details
- mock failure of reserve action


### Overview on architecture and state management
- I have used layered clean architecture(data-domain-presentation)
- I have used bloc as state management
- All Exception is handled on Data layer 
- In domain layer Exception is decoded to Failure to be emitted in presentation
