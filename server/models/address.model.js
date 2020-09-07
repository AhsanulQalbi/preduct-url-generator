module.exports = (sequelize, DataTypes) =>{
    const Address = sequelize.define(
        "Address",
        {
            street : {
                type : DataTypes.STRING,
            },
            city : {
                type : DataTypes.STRING,

            },
            province : {
                type : DataTypes.STRING,

            },
            country : {
                type : DataTypes.STRING,

            },
            postal_code : {
                type : DataTypes.STRING,
            }
    }, {
        paranoid: true,
        deletedAt: 'deleted_at',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
    });

    Address.associate = models => {
        Address.belongsTo(models.User,{
            foreignKey:{
                allowNull : false
            }
        })
    };

    return Address;
};