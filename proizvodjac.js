
import { sequelize, DataTypes, Op } from './utils.js'

const Proizvodjaci = sequelize.define ( 'Proizvodjaci', {
  ime:{
    type: DataTypes.STRING(128),
    allowNull: true
  }
  
},{
  tableName: 'proizvodjaci',
  timeStamp: true
})


export const getProizvodjaci = async (proizvodjacId) => {
  try {
    const proizvidjac = await Proizvodjaci.findAll({where: { id: proizvodjacId }})
    return proizvidjac 
  } catch(error) {
    console.log(error)
    return false
  }
}
