const cds = require('@sap/cds')

module.exports = srv => {

    const {Main, YesNo} = srv.entities

    srv.before('PATCH', 'Main', async (req) => {
        if(req.data.element1_code == 1){
            req.data.uihidden = false
        } else if(req.data.element1_code == 0){ 
            req.data.uihidden = true
        }
    })

}