package mvc

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.codehaus.groovy.util.HashCodeHelper
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@ToString(cache=true, includeNames=true, includePackage=false)
class UserNewRole implements Serializable {

	private static final long serialVersionUID = 1

	UserNew userNew
	Role role

	@Override
	boolean equals(other) {
		if (other instanceof UserNewRole) {
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

	static UserNewRole get(long userNewId, long roleId) {
		criteriaFor(userNewId, roleId).get()
	}

	static boolean exists(long userNewId, long roleId) {
		criteriaFor(userNewId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long userNewId, long roleId) {
		UserNewRole.where {
			userNew == UserNew.load(userNewId) &&
			role == Role.load(roleId)
		}
	}

	static UserNewRole create(UserNew userNew, Role role, boolean flush = false) {
		def instance = new UserNewRole(userNew: userNew, role: role)
		instance.save(flush: flush)
		instance
	}

	static boolean remove(UserNew u, Role r) {
		if (u != null && r != null) {
			UserNewRole.where { userNew == u && role == r }.deleteAll()
		}
	}

	static int removeAll(UserNew u) {
		u == null ? 0 : UserNewRole.where { userNew == u }.deleteAll() as int
	}

	static int removeAll(Role r) {
		r == null ? 0 : UserNewRole.where { role == r }.deleteAll() as int
	}

	static constraints = {
		role validator: { Role r, UserNewRole ur ->
			if (ur.userNew?.id) {
				UserNewRole.withNewSession {
					if (UserNewRole.exists(ur.userNew.id, r.id)) {
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
