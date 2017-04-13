select concat_ws(" ", users.first_name, users.last_name) as user, concat_ws(" ", users2.first_name, users2.last_name) as friend from users
left join friendships on friendships.user_id = users.id
left join users as users2 on users2.id = friendships.friend_id