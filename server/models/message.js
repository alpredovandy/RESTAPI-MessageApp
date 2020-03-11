export default (sequelize, DataTypes) => {
  const Message = sequelize.define('Message', {
    message: {
      type: DataTypes.STRING,
      allowNull: {
        args: false,
        msg: 'Please enter your message'
      }
    },
    status: {
      type: DataTypes.INTEGER,
      allowNull: {
        args: false,
        msg: 'Pease input status'
      }
    },
    userId: {
      type: DataTypes.INTEGER,
      references: {
        model: 'User',
        key: 'id',
        as: 'userId',
      }
    }
  }, {});
  Message.associate = (models) => {
    // associations can be defined here
    Message.belongsTo(models.User, {
      foreignKey: 'userId',
      onDelete: 'CASCADE'
    });
  };
  return Message;
};