package rubiks.cube.tutorial

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.codehaus.groovy.util.HashCodeHelper
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@ToString(cache=true, includeNames=true, includePackage=false)
class CmsUserRole implements Serializable {

	private static final long serialVersionUID = 1

	CmsUser user
	Role role

	@Override
	boolean equals(other) {
		if (other instanceof CmsUserRole) {
			other.userId == user?.id && other.roleId == role?.id
		}
	}

    @Override
	int hashCode() {
	    int hashCode = HashCodeHelper.initHash()
        if (user) {
            hashCode = HashCodeHelper.updateHash(hashCode, user.id)
		}
		if (role) {
		    hashCode = HashCodeHelper.updateHash(hashCode, role.id)
		}
		hashCode
	}

	static CmsUserRole get(long userId, long roleId) {
		criteriaFor(userId, roleId).get()
	}

	static boolean exists(long userId, long roleId) {
		criteriaFor(userId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long userId, long roleId) {
		CmsUserRole.where {
			user == CmsUser.load(userId) &&
			role == Role.load(roleId)
		}
	}

	static CmsUserRole create(CmsUser user, Role role, boolean flush = false) {
		def instance = new CmsUserRole(user: user, role: role)
		instance.save(flush: flush)
		instance
	}

	static boolean remove(CmsUser u, Role r) {
		if (u != null && r != null) {
			CmsUserRole.where { user == u && role == r }.deleteAll()
		}
	}

	static int removeAll(CmsUser u) {
		u == null ? 0 : CmsUserRole.where { user == u }.deleteAll() as int
	}

	static int removeAll(Role r) {
		r == null ? 0 : CmsUserRole.where { role == r }.deleteAll() as int
	}

	static constraints = {
	    user nullable: false
		role nullable: false, validator: { Role r, CmsUserRole ur ->
			if (ur.user?.id) {
				if (CmsUserRole.exists(ur.user.id, r.id)) {
				    return ['userRole.exists']
				}
			}
		}
	}

	static mapping = {
		id composite: ['user', 'role']
		version false
	}
}
