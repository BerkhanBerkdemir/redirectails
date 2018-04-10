# Creates default admin user
User.create(username: 'admin',
            password: 'secretpassw0rd',
            password_confirmation: 'secretpassw0rd',
            role: 'ADMIN')
