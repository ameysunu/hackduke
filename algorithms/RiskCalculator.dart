import 'dart:math';

class RiskCalculator {
  static final double PERSONALSPACE =
      10.5071; //amount of personal space required per person according to CDC guidelines for a 6-foot social distanced area
  static final List<String> RISKLEVELS = [
    "low",
    "medium",
    "high",
    "critical"
  ]; //risk quality classification

  static String calcRisk(
      int population, int a, int b, int c, int d, int e, int rad) {
    double area = (pi * pow(rad, 2)); //
    if (population > (0.6 * (area ~/ PERSONALSPACE))) {
      return RISKLEVELS[3];
    }

    //weighting of each risk factor variable was determined through studying literature on coronavirus and foundational random forest algorithm feature selection
    double weightPop = (0.15 * population); //weight of population
    double weightA =
        (0.4 * population); //weight of number of positive coronavirus cases
    double weightB =
        (0.15 * population); //weight of number of severe coronavirus symptoms
    double weightC =
        (0.1 * population); //weight of number of mild coronavirus symptoms
    double weightD = (0.03 *
        population); //weight of number of contacts with coronavirus smptoms
    double weightE = (0.17 *
        population); //weight of number of contacts with positive coronavirus cases
    double maxCap = (0.6 *
        (area ~/
            PERSONALSPACE)); //maximum capacity for an area according to CDC guidelines - 0.6 maximum area capacity factor

    double infectivity = ((((((weightA * a) + (weightB * b)) + (weightC * c)) +
            (weightD * d)) +
        (weightE *
            e))); //infectivity rate determined as a weighted sum of all possible coronavirus risks in the population

    double threshold = (((((((maxCap ~/ population) - a) - b) - c) - d) - e) *
        infectivity); //threshold determination for classification of risk quality
    double weightedSum = ((((((weightPop * population) + (weightA * a)) +
                    (weightB * b)) +
                (weightC * c)) +
            (weightD * d)) +
        (weightE *
            e)); //weighted sum average in order to determine the degree of risk quality in comparison to the number of health individuals in the population (threshold)

    //threshold comparisons to weightedSum in order to determine the risk quality
    if (weightedSum > threshold) {
      return RISKLEVELS[3];
    } else {
      if (weightedSum > (0.6 * threshold)) {
        return RISKLEVELS[2];
      } else {
        if (weightedSum > (0.3 * threshold)) {
          return RISKLEVELS[1];
        } else {
          return RISKLEVELS[0];
        }
      }
    }
  }
}
