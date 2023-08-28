Class {
	#name : #TBAdminComponent,
	#superclass : #TBScreenComponent,
	#instVars : [
		'report'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #comparing }
TBAdminComponent >> > createHeaderComponent [
^ TBAdminHeaderComponent from: self
]

{ #category : #hooks }
TBAdminComponent >> children [
^ super children copyWith: self report
]

{ #category : #comparing }
TBAdminComponent >> createHeaderComponent [
^ TBAdminHeaderComponent from: self
]

{ #category : #'as yet unclassified' }
TBAdminComponent >> goToPostListView [
self answer

]

{ #category : #initialization }
TBAdminComponent >> initialize [
super initialize.
self report: (TBPostsReport from: self blog)

]

{ #category : #rendering }
TBAdminComponent >> renderContentOn: html [
super renderContentOn: html.
html tbsContainer: [
html heading: 'Blog Admin'.
html horizontalRule.
html render: self report ]
]

{ #category : #rendering }
TBAdminComponent >> renderDisconnectButtonOn: html [
html tbsNavbarButton
tbsPullRight;
callback: [ self session reset ];
with: [
html text: 'Disconnect '.
html tbsGlyphIcon iconLogout ]

]

{ #category : #accessing }
TBAdminComponent >> report [
^ report

]

{ #category : #accessing }
TBAdminComponent >> report: aReport [
report := aReport
]
