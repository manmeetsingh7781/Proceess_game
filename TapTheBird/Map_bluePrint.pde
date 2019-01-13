
import java.util.ArrayList;
import java.util.SplittableRandom;

class Grid{
    public int[][] map;
    public ArrayList<Float> elements = new ArrayList<Float>();
    private float random_result;
    



      Grid( long number_of_elements ) {
       
        for (int i = 0; i < number_of_elements; i++) {
            random_result = random(height*3, height*5);
            elements.add(random_result);
        }
    }

}
