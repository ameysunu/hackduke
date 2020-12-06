public class RiskCalculator{
    
    final static double PERSONALSPACE = 10.5071;
    final static String[] RISKLEVELS = {"low", "medium", "high", "critical"};
    
    public static String calcRisk(int population, int a, int b, int c, int d, int e, int rad) {
        double area = Math.PI * Math.pow(rad, 2);

        if (population > 0.6 * (area / PERSONALSPACE)){
            return RISKLEVELS[3];
        }

        double weightPop = 0.15 * population;
        double weightA = 0.40 * population;
        double weightB = 0.15 * population;
        double weightC = 0.1 * population;
        double weightD = 0.03 * population;
        double weightE = 0.17 * population;
        
        double maxCap = 0.6 * (area / PERSONALSPACE);
        double infectivity = ((weightA * a + weightB * b + weightC * c + weightD * d + weightE * e) + 1);
        double threshold = ((maxCap)/population - a - b - c - d - e)*infectivity;
        double weightedSum = (weightPop*population + weightA * a + weightB * b + weightC * c + weightD * d + weightE * e);
        
        System.out.println(maxCap);
        System.out.println(maxCap*4/3);
        System.out.println(threshold);
        System.out.println(weightedSum);
        
        if (weightedSum > threshold){
            return RISKLEVELS[3];
        } else if (weightedSum > 0.6 * threshold){
            return RISKLEVELS[2];
        } else if (weightedSum > 0.3 * threshold){
            return RISKLEVELS[1];
        } else {
            return RISKLEVELS[0];
        }

    }


     public static void main(String []args){
        RiskCalculator beans = new RiskCalculator();
        System.out.println(beans.calcRisk(20, 4, 3, 8, 1, 0, 45));
     }
    }
