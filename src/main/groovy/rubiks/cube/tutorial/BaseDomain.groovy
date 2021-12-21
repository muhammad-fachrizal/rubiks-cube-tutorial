package rubiks.cube.tutorial

import grails.gorm.dirty.checking.DirtyCheck

@DirtyCheck
class BaseDomain {
    Date dateCreated
    Date lastUpdated
}