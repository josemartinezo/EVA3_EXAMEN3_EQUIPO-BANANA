

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DataEnteredDelegate{
        
    @IBAction func btnAñadir(sender: AnyObject) {
        arreglo[0].addObject("RESTAURANTE")
        arreglo[1].addObject("Descripcion")
        arreglo[2].addObject("Direccion y Telefono")
        arreglo[3].addObject("barrafina")
        arreglo[4].addObject(["star-c","star-c","star-c"])
        //nombreRestaurant = arreglo[0] as! [String]
        //descriptionRestaurant = arreglo[1] as! [String]
        //direccionRestaurant = arreglo[2] as! [String]
        //imagenRestaurant = arreglo[3] as! [String]
        //rateRestaurant.append(["star-c","star.c","star-c"])
        //arreglo[4].addObject(rateRestaurant)
        
        let ruta = obtenRuta()
        arreglo.writeToURL(ruta, atomically: true)
        tableView.reloadData()
        
        }
    
    @IBOutlet weak var tableView: UITableView!
    
    var arreglo: NSMutableArray = []
    
    var rowSelec = 0
    var eval = ""
    
    @IBAction func btnupdate(sender: AnyObject) {
        print(nombreRestaurant)
    }
    
    var restaurantes = []
    var descripcion = []
    var direccion = []
    var imagenes = []
    var ratio = [[]]
    
    var nombreRestaurant = [
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
        "RESTAURANTE",
    ]
    
    var descriptionRestaurant = [
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
        "Descripcion",
    ]
    
    var direccionRestaurant = [
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
        "Direccion y telefono",
    ]
    
    var imagenRestaurant = [
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
        "barrafina",
    ]
    
    var rateRestaurant = [
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
        ["star-c","star-c","star-c"],
    ]
    
    
    
    let imagenesRestaurant = ["barrafina", "bourkestreetbakery","cafedeadend", "cafeloisl", "cafelore", "confessional", "donostia", "fiveleaves", "forkeerestaurant", "grahamavenuemeats", "haighschocolate", "homei", "palominoespresso", "petiteoyster", "posatelier", "royaloak", "teakha", "thaicafe", "traif", "upstate", "wafflewolf"]
    
    var compCalifa = [
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ["","",""],
    ]
    var calRate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ruta = obtenRuta()
        if(NSFileManager.defaultManager().fileExistsAtPath(ruta.path!)){
            arreglo = NSMutableArray(contentsOfURL: ruta)!
            nombreRestaurant = arreglo[0] as! [String]
            descriptionRestaurant = arreglo[1] as! [String]
            direccionRestaurant = arreglo[2] as! [String]
            imagenRestaurant = arreglo[3] as! [String]
            rateRestaurant = arreglo[4] as! [Array<String>]
        
            
            print(nombreRestaurant)
            print(descriptionRestaurant)
            print(direccionRestaurant)
            print(imagenRestaurant)
            print(rateRestaurant)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombreRestaurant.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controlador = UIAlertController(title:"Tus datos",message: "funciona",preferredStyle: .Alert)
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let celda = tableView.dequeueReusableCellWithIdentifier("prime") as! primeTableViewCell
        //Falta asignar los datos del arreglo a la celda que se va a reutilizar
        
        
        celda.restaurantName.text = nombreRestaurant[indexPath.row] as? String
        let imagen = UIImage(named: imagenRestaurant[indexPath.row])
        celda.restaurantImage.image = imagen
        
        celda.restaurantLocation.text = direccionRestaurant[indexPath.row]
        celda.restaurantDescription.text = descriptionRestaurant[indexPath.row]
        celda.starImage1.image = UIImage(named: rateRestaurant[indexPath.row][0])
        celda.starImage2.image = UIImage(named: rateRestaurant[indexPath.row][1])
        celda.starImage3.image = UIImage(named: rateRestaurant[indexPath.row][2])

        return celda;

    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let compartirAct = UITableViewRowAction(style: .Default, title: "Share", handler: compartirRestaurant)
        
        compCalifa[rowSelec] = rateRestaurant[rowSelec]
        
        if(compCalifa[indexPath.row] == ["star-b","star-c","star-c"]){
            calRate = "Malo"
        }else if(compCalifa[indexPath.row] == ["star-b","star-b","star-c"]){
            calRate = "Bueno"
        }else if(compCalifa[indexPath.row] == ["star-b","star-b","star-b"]){
            calRate = "Recomendable"
        }else{
            calRate = "No Calificado"
        }
        
        let capturarAct = UITableViewRowAction(style: .Default, title: "Capturar", handler: {action in self.performSegueWithIdentifier("capturar", sender: self)})
        let opinionAct = UITableViewRowAction(style: .Default, title: "Opinion", handler: {action in self.performSegueWithIdentifier("opinion", sender: self)})
        
        capturarAct.backgroundColor = UIColor.purpleColor()
        opinionAct.backgroundColor = UIColor.cyanColor()
        
        rowSelec = indexPath.row
        return [compartirAct,capturarAct,opinionAct]
        
    }

    func compartirRestaurant(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        
        let miImagen = UIImage(named: imagenRestaurant[indexPath.row])
        
        
        let miTexto = "Vine a comer en " + nombreRestaurant[indexPath.row] + " evaluado como " + "" + calRate
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!, eval], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
        
    }
    /*func compartirRestaurant(action:UITableViewRowAction, indexPath:NSIndexPath) -> Void{
        let miImagen = UIImage(named: imagenRestaurant[indexPath.row])
        let miTexto = nombreRestaurant[rowSelec] + "evaluado como "
        let actController = UIActivityViewController(activityItems: [miTexto, miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    }*/
    
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        let foo = segue.sourceViewController
        
    }
    @IBAction func unWindToViewControllerFromOpinion(segue: UIStoryboardSegue) {
        let fuente = segue.sourceViewController as! opinionViewController
        
        rateRestaurant[rowSelec] = fuente.rateStar
        
        print(fuente.rateStar)
        
        
        tableView.beginUpdates()
        tableView.reloadRowsAtIndexPaths(tableView.indexPathsForVisibleRows!, withRowAnimation: .None)
        tableView.endUpdates()
        guardarA()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "capturar" {
            let secondViewController = segue.destinationViewController as! editViewController
            secondViewController.delegate = self
            secondViewController.fldTxtNom = nombreRestaurant[rowSelec]
            secondViewController.fldtxtDesc = descriptionRestaurant[rowSelec]
            secondViewController.fldtxtDirec = direccionRestaurant[rowSelec]
            secondViewController.imgButton = imagenRestaurant[rowSelec]
        }
        if segue.identifier == "opinion" {
            let destino = segue.destinationViewController as! opinionViewController
            destino.rateStar = rateRestaurant[rowSelec]
            destino.timagen = imagenRestaurant[rowSelec]
            destino.tnombre = nombreRestaurant[rowSelec]
            destino.tdescripcion = descriptionRestaurant[rowSelec]
            destino.tubicacion = direccionRestaurant[rowSelec]
            
            
        }
    }
    
    func userDidEnterInformation(info: String, descInfo: String, direcInfo: String, informacion:String) {
        nombreRestaurant[rowSelec] = info
        descriptionRestaurant[rowSelec] = descInfo
        direccionRestaurant[rowSelec] = direcInfo
        imagenRestaurant[rowSelec] = informacion
        tableView.beginUpdates()
        tableView.reloadRowsAtIndexPaths(tableView.indexPathsForVisibleRows!, withRowAnimation: .None)
        tableView.endUpdates()
        guardarA()
    }
    
    func obtenRuta() -> NSURL {
        let tempDir = NSTemporaryDirectory()
        let tempoDirURL = NSURL(fileURLWithPath: tempDir)
        let tempDirFile = tempoDirURL.URLByAppendingPathComponent("milista.plist")
        return tempDirFile
    }
    
    func guardarA(){
        let ruta = obtenRuta()
        arreglo[0] = nombreRestaurant
        arreglo[1] = descriptionRestaurant
        arreglo[2] = direccionRestaurant
        arreglo[3] = imagenRestaurant
        arreglo[4] = rateRestaurant
        
        arreglo.writeToURL(ruta, atomically: true)
    }
    
    
    
}

