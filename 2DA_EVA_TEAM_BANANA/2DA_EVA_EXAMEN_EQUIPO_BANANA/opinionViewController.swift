
import UIKit

class opinionViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var ubicacion: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    var tnombre = ""
    var tdescripcion = ""
    var tubicacion = ""
    var timagen = ""
    
    var rateStar = ["star-c","star-b","star-c"]
    
    @IBAction func saveRate(sender: AnyObject) {
        
        rateStar = [button1.selected ? "star-b":"star-c",button2.selected ? "star-b":"star-c",button3.selected ? "star-b":"star-c"]
        
        performSegueWithIdentifier("viewBack", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ubicacion.text = tubicacion
        descripcion.text = tdescripcion
        nombre.text = tnombre
        imagen.image = UIImage(named: timagen)
        
        button1.setBackgroundImage(UIImage(named: "star-b"), forState: .Selected)
        button2.setBackgroundImage(UIImage(named: "star-b"), forState: .Selected)
        button3.setBackgroundImage(UIImage(named: "star-b"), forState: .Selected)
        
        
        button1.selected = rateStar[0]=="star-b"
        button2.selected = rateStar[1]=="star-b"
        button3.selected = rateStar[2]=="star-b"

        // Do any additional setup after loading the view.
    }

    
    @IBAction func star1(sender: AnyObject) {
        button1.selected=true;
        button2.selected=false;
        button3.selected=false;

    }
    
    @IBAction func star2(sender: AnyObject) {
        button1.selected=true;
        button2.selected=true;
        button3.selected=false;

    }
    
    @IBAction func star3(sender: AnyObject) {
        button1.selected=true;
        button2.selected=true;
        button3.selected=true;

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
