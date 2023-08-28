Class {
	#name : #TBApplicationRootComponent,
	#superclass : #WAComponent,
	#instVars : [
		'main'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #testing }
TBApplicationRootComponent class >> canBeRoot [
^ true

]

{ #category : #comparing }
TBApplicationRootComponent class >> initialize [
"self initialize"
| app |
app := WAAdmin register: self asApplicationAt: 'TinyBlog'.
app
addLibrary: JQDeploymentLibrary;
addLibrary: JQUiDeploymentLibrary;
addLibrary: TBSDeploymentLibrary
]

{ #category : #hooks }
TBApplicationRootComponent >> children [
^ { main }
]

{ #category : #initialization }
TBApplicationRootComponent >> initialize [
"self initialize"
| app |
app := WAAdmin register: self asApplicationAt: 'TinyBlog'.
app
preferenceAt: #sessionClass put: TBSession.
app
addLibrary: JQDeploymentLibrary;
addLibrary: JQUiDeploymentLibrary;
addLibrary: TBSDeploymentLibrary

]

{ #category : #accessing }
TBApplicationRootComponent >> main: aComponent [
main := aComponent
]

{ #category : #rendering }
TBApplicationRootComponent >> renderContentOn: html [
html render: main
]

{ #category : #updating }
TBApplicationRootComponent >> updateRoot: anHtmlRoot [
super updateRoot: anHtmlRoot.
anHtmlRoot beHtml5.
anHtmlRoot title: 'TinyBlog'
]
