class FibonacciLogica {
  List<int> generarFibonacci(int n) {
    if (n <= 0) return [];
    if (n == 1) return [0];
    List<int> serie = [0, 1];
    for (int i = 2; i < n; i++) {
      serie.add(serie[i - 1] + serie[i - 2]);
    }
    return serie;
  }
}
