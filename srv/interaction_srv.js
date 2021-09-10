const cds = require('@sap/cds')

module.exports = srv => {

    const {Main, YesNo} = srv.entities

    srv.after('READ', 'YesNo', async(req) => {
            
            console.log(req)

            const {code} = await SELECT .one(YesNo)
            return console.log(code) 

        })

    srv.after('PATCH', 'Main', async (req) => {
        console.log('PatchAfter1' + ' ' + req.element1_code + ' ' + req.testbool)

        if (req.element1_code == 1) {
            req.testbool = false
        } else if (req.element1_code == 0) {
            req.testbool = true
        }
        console.log('PatchAfter2' + ' ' + req.element1_code + ' ' + req.testbool)
        
        //Here i need to update/refresh the draft page, so that the ui changes
        //accordingly to the choise 'Yes' or 'No'
        //return UPDATE(Main.draft)
    })

}