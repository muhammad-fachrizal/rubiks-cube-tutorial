package rubiks.cube.tutorial

import grails.gorm.transactions.Transactional

@Transactional
class InitDataService {

    def init() {

        for (int i = 0; i < 8; i++) {
            Article article = new Article(
                    title: i + ' LOREM IPSUM',
                    image: 'https://loremflickr.com/240/240/rubikscube?random='+i,
                    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis condimentum et purus ut mollis. Fusce lacinia dolor tellus, ac ultrices ante vulputate nec. Praesent egestas, est sodales scelerisque gravida, lorem erat rhoncus arcu, eget sodales dolor enim vel massa. Etiam porta tristique diam, vitae faucibus nunc. Sed hendrerit, metus vel ornare faucibus, mi ipsum placerat quam, ac sagittis magna nulla et felis. Donec turpis velit, egestas vel orci fermentum, commodo dignissim neque. Maecenas luctus ac sem vitae mattis. Nullam consequat eget lacus at varius. Pellentesque neque magna, varius sed euismod vel, sagittis a ipsum. Ut in maximus dui. Nulla feugiat lorem at eros cursus pulvinar. Nunc ac consequat sem. Vivamus vel nulla a quam auctor commodo bibendum pharetra dui. Phasellus cursus, libero ac venenatis lacinia, tellus velit varius arcu, malesuada porttitor diam lacus et mi. Ut suscipit sodales viverra. Sed faucibus facilisis ipsum sed faucibus.'
            )
            article.validate()
            if (!article.hasErrors()){
                article.save(flush:true)
            }
        }

        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def adminUser = CmsUser.findByUsername('admin') ?: new CmsUser(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            CmsUserRole.create adminUser, adminRole
        }

    }
}
