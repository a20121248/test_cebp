SELECT U.*
  FROM users U
 WHERE U.id NOT IN
       (SELECT *
          FROM roles R,
               role_x_user RxU
         WHERE R.name='ABC' AND R.id=RxU.role_id)
   AND U.id IN
       (SELECT *
          FROM groups G,
               group_x_user GxU
         WHERE G.name='XYZ' AND G.id=GxU.group_id);