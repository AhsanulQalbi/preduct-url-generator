module.exports = (sequelize, DataTypes) =>{
    const User = sequelize.define("User",{
        fullname : {
            type : DataTypes.STRING,
            allowNull : false
        },
        email : {
            type : DataTypes.STRING,
            allowNull : false,
            unique: true
        },

        phone : {
            type : DataTypes.STRING,
            allowNull : false
        },
    }, {
        paranoid: true,
        deletedAt: 'deleted_at',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
    });

    User.associate = models => {
        User.hasMany(models.Product, {
            onDelete : 'cascade'
        })

        User.hasOne(models.Address,{
            onDelete : 'cascade'
        })
    };

    return User;
};