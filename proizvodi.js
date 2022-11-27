
import { sequelize, DataTypes, Op } from './utils.js'

const Proizvodi = sequelize.define ( 'Proizvodi', {
  proizvodjac_id:{
    type: DataTypes.INTEGER,
    allowNull: true
  },
  cena:{
    type: DataTypes.INTEGER,
    allowNull: true
  },
  opis_proizvoda:{
    type: DataTypes.STRING(256),
    allowNull: true
  },
  proizvod: {
    type: DataTypes.STRING(128),
    allowNull: true
  }
  
},{
  tableName: 'proizvodi',
  timeStamp: true
})


export const getProizvodi = async (proizvodId, proizvodjacId) => {
  try {
    const proizvod = await Proizvodi.findAll({where: { id: proizvodId , proizvodjac_id: proizvodjacId}})
    return proizvod 
  } catch(error) {
    console.log(error)
    return false
  }
}
