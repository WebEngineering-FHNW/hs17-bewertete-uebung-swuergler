package mvc

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.codehaus.groovy.util.HashCodeHelper
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@ToString(cache=true, includeNames=true, includePackage=false)
class UserRole implements Serializable {

	private static final long serialVersionUID = 1

	User userNew
	Role role

	@Override
	boolean equals(other) {
		if (other instanceof UserRole) {
			other.userNewId == userNew?.id && other.roleId == role?.id
		}
	}

    @Override
	int hashCode() {
	    int hashCode = HashCodeHelper.initHash()
        if (userNew) {
            hashCode = HashCodeHelper.updateHash(hashCode, userNew.id)
		}
		if (role) {
		    hashCode = HashCodeHelper.updateHash(hashCode, role.id)
		}
		hashCode
	}

	static UserRole get(long userNewId, long roleId) {
		criteriaFor(userNewId, roleId).get()
	}

	static boolean exists(long userNewId, long roleId) {
		criteriaFor(userNewId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long userNewId, long roleId) {
		UserRole.where {
			userNew == User.load(userNewId) &&
			role == Role.load(roleId)
		}
	}

	static UserRole create(User userNew, Role role, boolean flush = false) {
		def instance = new UserRole(userNew: userNew, role: role)
		instance.save(flush: flush)
		instance
	}

	static boolean remove(User u, Role r) {
		if (u != null && r != null) {
			UserRole.where { userNew == u && role == r }.deleteAll()
		}
	}

	static int removeAll(User u) {
		u == null ? 0 : UserRole.where { userNew == u }.deleteAll() as int
	}

	static int removeAll(Role r) {
		r == null ? 0 : UserRole.where { role == r }.deleteAll() as int
	}

	static constraints = {
		role validator: { Role r, UserRole ur ->
			if (ur.userNew?.id) {
				UserRole.withNewSession {
					if (UserRole.exists(ur.userNew.id, r.id)) {
						return ['userRole.exists']
					}
				}
			}
		}
	}

	static mapping = {
		id composite: ['userNew', 'role']
		version false
	}
}
